import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/firebase_constants.dart';
import '../../../../core/utils/logger.dart';
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
  late StreamSubscription<QuerySnapshot> _votesSubscription;

  late DocumentReference<PerformFirebase?> _firebaseDocPerform;

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

    // _votesSubscription = FirebaseFirestore.instance
    //     .collection(FirebaseConstants.collection.pollVotes)
    //     .snapshots()
    //     .listen((snapshot) {
    //   if (snapshot.docs.isNotEmpty) {
    //     // Handle the votes data here
    //     // For example, you can update the state with the new votes
    //     final List<Answer> votes = snapshot.docs.map((doc) {
    //       final data = doc.data();
    //       return Answer.fromJson(data['answer'] as Map<String, dynamic>);
    //     }).toList();
    //
    //     // Update the state with the new votes
    //     // emit(state.copyWith(votes: votes));
    //   }
    // });

    _firebaseDocPerform = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.minigame)
        .doc(FirebaseConstants.doc.perform)
        .withConverter<PerformFirebase?>(
          fromFirestore: (snapshot, _) => snapshot.data() != null
              ? PerformFirebase.fromJson(snapshot.data()!)
              : null,
          toFirestore: (perform, _) => perform?.toJson() ?? {},
        );
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
    String selectedUser = userList[Random().nextInt(userList.length)];
    logger.d('Selected user: $selectedUser');
    final performFirebase =
        PerformFirebase.fromPerform(perform, selectedUser, 'deviceId');
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.perform(),
      data: state.data.copyWith(perform: performFirebase),
    ));
    _firebaseDocPerform.set(performFirebase);
  }

  void reset() async {
    logger.d('reset');
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.reset(),
      data: const MinigameSetupStateData(poll: null, perform: null),
    ));
    _firebaseDocPerform.delete();
    _firebaseDocPoll.delete();

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
    // await _votesSubscription.cancel();
    reset();
    super.close();
  }
}
