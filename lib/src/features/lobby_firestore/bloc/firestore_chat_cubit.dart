import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/utils.dart';
import '../../game/model/game_message.dart';

part 'firestore_chat_cubit.freezed.dart';
part 'firestore_chat_state.dart';

class FirestoreChatCubit extends Cubit<FirestoreChatState> {
  late final StreamSubscription _subscription;

  FirestoreChatCubit()
      : super(
          const FirestoreChatState(
            status: FirestoreChatStateStatus.initial(),
            chat: Chat(messages: []),
          ),
        ) {
    _subscription = FirebaseFirestore.instance
        .collection('messages')
        .snapshots()
        .listen((snapshot) {
      final docs = snapshot.docs;
      if (docs.isNotEmpty) {
        _read(docs);
      }
    }, onError: (error) {
      logger.e('FirestoreChatCubit error: $error');
      emit(state.copyWith(
        status: const FirestoreChatStateStatus.error(),
      ));
    });
  }

  @override
  Future<void> close() async {
    logger.d('FirestoreChatCubit dispose');
    _subscription.cancel();
    super.close();
  }

  void _read(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    final stopwatch = Stopwatch()..start();
    final messages = docs.map((doc) {
      final data = doc.data();
      final message = data['message'] as String;

      return Message(
        deviceId: (data['deviceInfo'] ?? '') as String,
        author: data['nickname'] as String,
        text: message,
        timestamp: data['timestamp'],
      );
    }).toList();

    final copy = state.chat.messages.toList();
    copy.addAll(messages);
    stopwatch.stop();
    logger.d(
        'Firestore new messages[${messages.length}], read in ${stopwatch.elapsedMilliseconds} ms');
    emit(
      state.copyWith(
        status: const FirestoreChatStateStatus.reading(),
        chat: Chat(messages: copy),
      ),
    );
  }

  void deleteChat() async {
    logger.d('FirestoreChatCubit deleteChat');
    emit(
      state.copyWith(
        status: const FirestoreChatStateStatus.deleting(),
      ),
    );
    final messagesCollection =
        FirebaseFirestore.instance.collection('messages');
    final messagesSnapshot = await messagesCollection.get();
    for (final doc in messagesSnapshot.docs) {
      await doc.reference.delete();
    }

    emit(
      state.copyWith(
        status: const FirestoreChatStateStatus.deleted(),
        chat: const Chat(messages: []),
      ),
    );
  }
}
