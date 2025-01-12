import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/core/utils/utils.dart';
import 'package:stanza_scrapper/domain/usecases/firestore/swearword_filter_use_case.dart';
import 'package:stanza_scrapper/src/features/game/model/game_message.dart';

part 'firestore_chat_cubit.freezed.dart';
part 'firestore_chat_state.dart';

class FirestoreChatCubit extends Cubit<FirestoreChatState> {
  late final StreamSubscription _subscription;
  final SwearWordFilterUseCase _swearWordFilterUseCase =
      SwearWordFilterUseCase();

  FirestoreChatCubit()
      : super(const FirestoreChatState(
            status: FirestoreChatStateStatus.initial(),
            chat: Chat(messages: []))) {
    _subscription = FirebaseFirestore.instance
        .collection("messages")
        .snapshots()
        .listen((snapshot) {
      final docs = snapshot.docs;
      if (docs.isNotEmpty) {
        _read(docs);
      }
    });
  }

  @override
  Future<void> close() async {
    logger.d('FirestoreChatCubit dispose');
    _subscription.cancel();
    super.close();
  }

  void _read(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    final messages = docs.map((doc) {
      final data = doc.data();
      final cleanedText =
          _swearWordFilterUseCase.call(params: data['message'] as String);
      return Message(
        deviceId: (data['deviceInfo'] ?? '') as String,
        author: data['nickname'] as String,
        text: cleanedText.isRight ? cleanedText.right : cleanedText.left,
        timestamp: data['timestamp'],
      );
    }).toList();

    final copy = state.chat.messages.toList();
    copy.addAll(messages);

    emit(
      state.copyWith(
        status: const FirestoreChatStateStatus.reading(),
        chat: Chat(messages: copy),
      ),
    );
  }
}
