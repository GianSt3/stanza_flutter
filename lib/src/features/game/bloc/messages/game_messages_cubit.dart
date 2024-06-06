import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/bloc/model/message.dart';
import 'package:stanza_scrapper/src/features/game/model/audio_message.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/utils/logger.dart';

part 'game_messages_state.dart';

part 'game_messages_cubit.freezed.dart';

class GameMessagesCubit extends Cubit<GameMessagesState> {
  final ElevenLabsAPI api;
  final player = AudioPlayer();

  late final Timer checkQueue;

  GameMessagesCubit(this.api)
      : super(const GameMessagesState(status: GameMessagesStatus.initial())) {
    player.setReleaseMode(ReleaseMode.release);
    player.onPlayerComplete.listen((event) {
      // Player completed
      pop();
    });

    // player.onPlayerStateChanged.listen((event) {
    //   logger.d("Player state changed: $event");
    // });

    checkQueue = Timer.periodic(const Duration(seconds: 2), (timer) {
      loadSource();
    });
  }

  void pushAll(List<Message> messages, List<Player> players) {
    var temp = state.messages.toList();
    final audioMessages = messages.map((message) => AudioMessage.now(
        message: message,
        player:
            players.where((element) => element.name == message.author).first));
    temp.insertAll(0, audioMessages);

    emit(state.copyWith(
        status: const GameMessagesStatus.added(), messages: temp));
  }

  void pop() {
    logger.d(
        "Total messages queue: ${state.messages.length}\nAudio is present in ${state.messages.where((element) => element.source != null).length} elements.\n Player is ${player.state}");
    if (player.state == PlayerState.playing) {
      logger.d("Player already playing...");
      return;
    }

    if (state.messages.isNotEmpty && state.messages.last.source != null) {
      var tempMessages = state.messages.toList();
      final audioMessage = tempMessages.removeLast();
      var tempLastMessages = state.lastPlayerMessages.toList();
      tempLastMessages
          .removeWhere((m) => m.message.author == audioMessage.message.author);
      tempLastMessages.add(audioMessage);

      emit(state.copyWith(
          status: GameMessagesStatus.pop(audioMessage),
          messages: tempMessages,
          lastPlayerMessages: tempLastMessages));

      /// AudioPlayer
      player.play(audioMessage.source!);
    } else {
      // List is empty or audio not available
      final lastMessage = state.messages.lastOrNull;
      if (lastMessage != null &&
          lastMessage.created
              .add(const Duration(seconds: 5))
              .isAfter(DateTime.now())) {
        logger.w(
            "The message is present, but the source audio isn't.\n5 seconds already passed.\n${lastMessage.created} ");
      }
    }
  }

  void loadSource() async {
    var temp = state.messages.toList();

    /// Load source
    if (temp.isNotEmpty && !temp.every((element) => element.source != null)) {
      final startTime = DateTime.now();

      final message = temp.lastWhere((element) => element.source == null);
      logger.d(
          "Ask for audio source for message: ${message.message.timestamp} - ${message.message.author}: ${message.message.text}");

      try {
        final result = await api.synthesize(TextToSpeechRequest(
            modelId: "eleven_multilingual_v2",
            voiceId: message.player.voice.voiceId!,
            text: message.message.text,
            voiceSettings: message.player.voice.voiceSettings));

        final audioMessage = message.copyWith(source: BytesSource(result));

        final index = temp
            .indexWhere((element) => element.message.id == message.message.id);
        temp.removeAt(index);
        temp.insert(index, audioMessage);
        logger.d(
            "Audio loaded.\nMillis: ${DateTime.now().difference(startTime).inMilliseconds}");
        emit(state.copyWith(
            status: const GameMessagesStatus.loaded(), messages: temp));
      } catch (error) {
        logger.e("Error during API ", error: error);
        emit(state.copyWith(
          status: GameMessagesStatus.error(error, "Error during API for message ${message.toString()}"),
        ));
      }
    }
  }
}
