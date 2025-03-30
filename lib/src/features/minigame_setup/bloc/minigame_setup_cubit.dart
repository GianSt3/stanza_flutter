import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/firebase_constants.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/usecases/firestore/perform_user_list/perform_user_list_use_case.dart';
import '../perform/model/perform.dart';
import '../perform/model/perform_firebase.dart';
import '../poll/model/poll.dart';
import '../poll/model/poll_firebase.dart';

part 'minigame_setup_cubit.freezed.dart';
part 'minigame_setup_state.dart';

class MinigameSetupCubit extends Cubit<MinigameSetupState> {
  PerformUserListUseCase performUserListUseCase;

  MinigameSetupCubit(this.performUserListUseCase)
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
  late DocumentReference<PressedFirebase?> _firebaseDocPress;
  late StreamSubscription<DocumentSnapshot<PerformFirebase?>>
      _performSubscription;

  MockPerformUserListUseCase mockPerformUserListUseCase =
      MockPerformUserListUseCase();

  final TextEditingController pressedMinigameDurationController =
      TextEditingController(text: '10');

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

    _firebaseDocPress = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.minigame)
        .doc(FirebaseConstants.doc.pressed)
        .withConverter<PressedFirebase?>(
          fromFirestore: (snapshot, _) => snapshot.data() != null
              ? PressedFirebase.fromJson(snapshot.data()!)
              : null,
          toFirestore: (press, _) => press?.toJson() ?? {},
        );

    _performSubscription = _firebaseDocPerform
        .snapshots(includeMetadataChanges: true)
        .listen((snapshot) {
      logger.d('Perform Firebase Doc changed...');
      final PerformFirebase? perform = snapshot.data();
      if (perform != null) {
        if (perform.accept == false) {
          logger.d('Perform not accepted by ${perform.nickname}');
          _acceptTimer?.cancel();
          _selectAnotherUser();
        } else if (perform.accept == true) {
          logger.d('Perform accepted by ${perform.nickname}');
          _acceptTimer?.cancel();
        }
      }
    });
  }

  void setPoll(Poll poll, {int seconds = 60}) async {
    reset();
    final pollFirebase = PollFirebase.fromPoll(poll,
        Timestamp.fromDate(DateTime.now().add(Duration(seconds: seconds))));
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.poll(),
      data: state.data.copyWith(poll: pollFirebase),
    ));
    await _firebaseDocPoll.set(pollFirebase);
  }

  void setPerform(Perform perform, List<String> userList) async {
    if (userList.isEmpty) {
      logger.e('No users in lobby');
      return;
    }
    final selectedUser = performUserListUseCase.call(params: userList);
    final performFirebase =
        PerformFirebase.fromPerform(perform, selectedUser, 'deviceId');
    await _firebaseDocPerform.set(performFirebase);
    _acceptanceTimerWait();
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.perform(),
      data: state.data.copyWith(perform: performFirebase),
    ));
  }

  void _acceptanceTimerWait() {
    _acceptTimer?.cancel();
    _acceptTimer = Timer(const Duration(seconds: 15), () {
      logger.d(
          'Perform Accept timer called. Previous user did not answer; selecting another user');
      final currentPerform = state.data.perform;
      if (currentPerform != null && currentPerform.accept != true) {
        logger.d('User did not accept in time');
        _selectAnotherUser();
      }
    });
  }

  void _selectAnotherUser() async {
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
    await _firebaseDocPerform.set(updatedPerform);
    _acceptanceTimerWait();
  }

  void setPress() {
    emit(state.copyWith(status: const MinigameSetupStateStatus.press()));
    final seconds = pressedMinigameDurationController.text.isNotEmpty
        ? int.parse(pressedMinigameDurationController.text)
        : 10;
    _firebaseDocPress.set(PressedFirebase.pressed(
        Timestamp.fromDate(DateTime.now().add(Duration(seconds: seconds)))));
    Future.delayed(Duration(seconds: seconds + 5), () {
      _firebaseDocPress.delete();
    });
  }

  void reset() async {
    logger.d('reset');
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.reset(),
      data: MinigameSetupStateData.empty(),
    ));

    _firebaseDocPerform.delete();
    _firebaseDocPoll.delete();
    _firebaseDocPress.delete();
    _performSubscription.cancel();

    // Delete all documents in the pollVotes collection
    final pollVotesCollection = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.pollVotes);
    final pollVotesSnapshot = await pollVotesCollection.get();
    for (final doc in pollVotesSnapshot.docs) {
      await doc.reference.delete();
    }

    // Delete all documents in the pressed collection
    final pressedCollection = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.pressedTimesCollection);
    final pressedSnapshot = await pressedCollection.get();
    for (final doc in pressedSnapshot.docs) {
      await doc.reference.delete();
    }
  }

  @override
  Future<void> close() async {
    reset();
    super.close();
  }
}
