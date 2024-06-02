import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/utils/logger.dart';

part 'queued_messages_state.dart';

part 'queued_messages_cubit.freezed.dart';

class QueuedMessagesCubit extends Cubit<QueuedMessagesState> {
  final ElevenLabsAPI api;
  final audioPlayer = AudioPlayer();

  QueuedMessagesCubit(this.api)
      : super(
            const QueuedMessagesState(status: QueuedMessagesStatus.initial())) {
    init();
  }

  void init() {
    audioPlayer.setReleaseMode(ReleaseMode.release);
    audioPlayer.onPlayerComplete.listen((event) {
      logger.w("Audio completed.");
      emit(state.copyWith(status: const QueuedMessagesStatus.played()));
      next();
    });
  }

  void add(Player player, String text) {
    final message = QueueMessage(player: player, text: text);
    // if (!state.audioMessages
    //     .map((message) => message.message)
    //     .contains(message)) {
    logger.i("Add new message\n${player.name}: ${message.text}\nQueue: ${state.audioMessages.length}");
    emit(state.copyWith(
      status: const QueuedMessagesStatus.queued(),
    ));
    _loadAudio(message);
    // }
  }

  void _play() {

    if (audioPlayer.state == PlayerState.playing) {
      logger.w("Already playing...");
      return;
    }
    emit(state.copyWith(status: const QueuedMessagesStatus.loading()));
    final nextAudio = state.audioMessages.firstOrNull;

    if (nextAudio != null) {
      logger.i("Queue: ${state.audioMessages.length} ");
      logger.i(
          "NextAudio\n${nextAudio.message.player.name}: ${nextAudio.message.text}");
      var tempAudioMessages = state.audioMessages.toList();
      final index = tempAudioMessages.indexOf(nextAudio);
      tempAudioMessages.removeAt(index);

      /// Update player text message
      Map<Player, String> tempMap = Map.from(state.lastPlayerMessages)
        ..[nextAudio.message.player] = nextAudio.message.text;

      emit(state.copyWith(
        status: QueuedMessagesStatus.play(nextAudio),
        lastPlayerMessages: tempMap,
        audioMessages: tempAudioMessages,
      ));

      /// Play
      audioPlayer.play(nextAudio.audio);
    } else {
      logger.i("Nothing to play... Retry");
      emit(state.copyWith(status: const QueuedMessagesStatus.initial()));

      /// Retry in 2 seconds
      Timer(const Duration(seconds: 4), _play);
    }
  }

  void next() {
    _play();
  }

  void _loadAudio(QueueMessage message) async {

    final result = await api.synthesize(TextToSpeechRequest(
        modelId: "eleven_multilingual_v2",
        voiceId: message.player.voice.voiceId!,
        text: message.text,
        voiceSettings: message.player.voice.voiceSettings));

    emit(state
        .copyWith(status: const QueuedMessagesStatus.loaded(), audioMessages: [
      ...state.audioMessages,
      QueuedAudioMessage(message: message, audio: BytesSource(result))
    ]));

    logger.i("API audio, loaded ${message.player.name}:${message.text}\nQueue:${state.audioMessages.length}");

    _play();
  }
}
