import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/bloc/firestore_chat_cubit.dart';
import 'package:stanza_scrapper/utils/logger.dart';

part 'firestore_game_messages_cubit.freezed.dart';
part 'firestore_game_messages_state.dart';

class FirestoreGameMessagesCubit extends Cubit<FirestoreGameMessagesState> {
  late final StreamSubscription _subscription;
  final Function(List<Message> messages, List<Player> players, bool playable)
      addMessages;

  FirestoreGameMessagesCubit(this.addMessages, bool playable)
      : super(FirestoreGameMessagesState.initial(
            Timestamp.now(), <Player>[], playable)) {
    _subscription = FirebaseFirestore.instance
        .collection('messages')
        .orderBy('timestamp')
        .snapshots()
        .listen((snapshot) {
      logger.d('''
      FirestoreGameMessagesCubit new messages... ${snapshot.docs.length}
      State players? ${state.players.map((p) => p.name).join(',')}
      ''');
      final docs = snapshot.docs;
      if (docs.isNotEmpty) {
        _read(docs);
      }
    });
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }

  void setParameters(List<Player> players, bool playable) {
    emit(state.copyWith(players: players, playable: playable));
  }

  void _read(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) async {
    final playerNameList = state.players.map((player) => player.name).toList();
    if (playerNameList.isEmpty) {
      return;
    }

    final stopwatch = Stopwatch()..start();
    final filteredMessages = docs
        .map((doc) => Message.fromJson(doc.data()))
        .toList()
        .where((message) =>
            message.timestamp.compareTo(state.lastTimestamp) > 0 &&
            playerNameList.contains(message.author))
        .toList();
    stopwatch.stop();
    if (filteredMessages.isEmpty) {
      return;
    }
    logger.d('''
        Filtered player messages from Firestore in ${stopwatch.elapsedMilliseconds} ms\n
        [${filteredMessages.length}] messages at ${state.lastTimestamp.millisecondsSinceEpoch}.\n
        Next timestamp filter: ${filteredMessages.last.timestamp.millisecondsSinceEpoch}.
        ''');
    emit(FirestoreGameMessagesState.reading(
        filteredMessages.last.timestamp, state.players, state.playable));
    addMessages(filteredMessages, state.players, state.playable);
  }
}
