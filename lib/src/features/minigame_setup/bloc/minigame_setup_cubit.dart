import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/firebase_constants.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/usecases/firestore/perform_user_list_use_case.dart';
import '../perform/model/perform.dart';
import '../perform/model/perform_firebase.dart';
import '../poll/model/poll.dart';
import '../poll/model/poll_firebase.dart';

part 'minigame_setup_cubit.freezed.dart';
part 'minigame_setup_state.dart';

class MinigameSetupCubit extends Cubit<MinigameSetupState> {
  MinigameSetupCubit()
      : super(
          const MinigameSetupState(
            status: MinigameSetupStateStatus.idle(),
            data: MinigameSetupStateData(poll: null, perform: null),
          ),
        ) {
    _init();
  }

  late DocumentReference<PollFirebase?> _firebaseDocPoll;

  late DocumentReference<PerformFirebase?> _firebaseDocPerform;
  late StreamSubscription<DocumentSnapshot<PerformFirebase?>>
      _performSubscription;

  PerformUserListUseCase performUserListUseCase = PerformUserListUseCase();

  Timer? _acceptTimer;

  void _init() {
    _firebaseDocPoll = FirebaseFirestore.instance
        .collection('_minigame')
        .doc('poll')
        .withConverter<PollFirebase?>(
          fromFirestore: (snapshot, _) => snapshot.data() != null
              ? PollFirebase.fromJson(snapshot.data()!)
              : null,
          toFirestore: (poll, _) => poll?.toJson() ?? {},
        );

    _firebaseDocPerform = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.minigame)
        .doc(FirebaseConstants.doc.perform)
        .withConverter<PerformFirebase?>(
          fromFirestore: (snapshot, _) => snapshot.data() != null
              ? PerformFirebase.fromJson(snapshot.data()!)
              : null,
          toFirestore: (perform, _) => perform?.toJson() ?? {},
        );

    _performSubscription = _firebaseDocPerform.snapshots().listen((snapshot) {
      final PerformFirebase? perform = snapshot.data();
      if (perform != null) {
        if (perform.accept == false) {
          logger.d('Perform not accepted');
          _selectAnotherUser();
        } else if (perform.accept == true) {
          _acceptTimer?.cancel();
        }
      }
    });
  }

  void setPoll(Poll poll) async {
    reset();
    final pollFirebase = PollFirebase.fromPoll(poll,
        Timestamp.fromDate(DateTime.now().add(const Duration(seconds: 60))));
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.poll(),
      data: state.data.copyWith(poll: pollFirebase),
    ));
    await _firebaseDocPoll.set(pollFirebase);
  }

  void setPerform(Perform perform, List<String> userList) {
    if (userList.isEmpty) {
      logger.e('No users in lobby');
      return;
    }
    final selectedUser = performUserListUseCase.call(params: userList);
    final performFirebase =
        PerformFirebase.fromPerform(perform, selectedUser, 'deviceId');
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.perform(),
      data: state.data.copyWith(perform: performFirebase),
    ));
    _firebaseDocPerform.set(performFirebase);
    _acceptanceTimerWait();
  }

  void _acceptanceTimerWait() {
    _acceptTimer?.cancel();
    _acceptTimer = Timer(const Duration(seconds: 10), () {
      final currentPerform = state.data.perform;
      if (currentPerform != null && currentPerform.accept != true) {
        logger.d('User did not accept in time');
        _selectAnotherUser();
      }
    });
  }

  void _selectAnotherUser() {
    // Logic to select another user and update the perform document
    final userList = performUserListUseCase.userList; // Retrieve the user list
    if (userList.isEmpty) {
      logger.e('No users in lobby');
      return;
    }
    String selectedUser =
        performUserListUseCase.another(); // Select another user
    logger.d('Selected another user: $selectedUser');
    final perform = state.data.perform!;
    final updatedPerform = PerformFirebase.fromPerform(
      Perform(title: perform.title, content: perform.content),
      selectedUser,
      'deviceId',
    );
    _firebaseDocPerform.set(updatedPerform);
    _acceptanceTimerWait();
  }

  void reset() async {
    logger.d('reset');
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.reset(),
      data: const MinigameSetupStateData(poll: null, perform: null),
    ));
    _firebaseDocPerform.delete();
    _firebaseDocPoll.delete();
    _performSubscription.cancel();

    // Delete all documents in the pollVotes collection
    final pollVotesCollection = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.pollVotes);
    final snapshot = await pollVotesCollection.get();
    for (final doc in snapshot.docs) {
      await doc.reference.delete();
    }
  }

  @override
  Future<void> close() async {
    reset();
    super.close();
  }
}
