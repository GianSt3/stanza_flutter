import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/config/environment/environment.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/synthesize_mock_use_case.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/synthesize_use_case.dart';
import 'package:stanza_scrapper/main.dart';
import 'package:stanza_scrapper/src/features/game/model/audio_message.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/utils/logger.dart';

part 'game_messages_state.dart';

part 'game_messages_cubit.freezed.dart';

class GameMessagesCubit extends Cubit<GameMessagesState> {
  final player = AudioPlayer();

  late final Timer checkQueue;

  final ISynthesizeUseCase _synthesizeUseCase =
      injector.get<Environment>().isDebug()
          ? SynthesizeMockUseCase()
          : SynthesizeUseCase(injector());

  GameMessagesCubit()
      : super(const GameMessagesState(
            status: GameMessagesStatus.initial(),
            apiStatus: GameMessagesLoadStatus.initial())) {
    player.setReleaseMode(ReleaseMode.release);
    // Max volume
    player.setVolume(1.0);

    player.onPlayerComplete.listen((event) {
      // Player completed
      pop();
    });

    checkQueue = Timer.periodic(const Duration(milliseconds: 230), (timer) {
      loadSource();
    });
  }

  void pushAll(List<YoutubeMessage> messages, List<Player> players) {
    var temp = state.messages.toList();
    final audioMessages = messages.map((message) => AudioMessage.now(
        message: message,
        player:
            players.where((element) => element.name == message.author).first));
    temp.insertAll(0, audioMessages);

    logger.d("""PUSH
        $temp""");

    emit(state.copyWith(
        status: const GameMessagesStatus.added(), messages: temp));
  }

  void pop() {
    logger.d(
        """POP Audio/Queue ${state.messages.where((element) => element.source != null).length} / ${state.messages.length} - Player: ${player.state}""");
    if (player.state == PlayerState.playing) {
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

      logger.d("""Playing ${audioMessage.toString()}""");

      /// AudioPlayer
      player.play(audioMessage.source!);
    } else {
      // List is empty or audio not available
      final lastMessage = state.messages.lastOrNull;
      if (lastMessage != null &&
          lastMessage.created
              .add(const Duration(seconds: 5))
              .isAfter(DateTime.now())) {
        logger.w("""Last message is getting older.
            ${lastMessage.toString()} 
            All queue:
            ${state.messages}
            """);
      }
    }
  }

  void loadSource() async {
    var temp = state.messages.toList();

    /// Load source
    if (temp.isNotEmpty &&
        !temp.every((element) => element.source != null) &&
        state.apiStatus.maybeWhen(
            initial: () => true, loaded: () => true, orElse: () => false)) {
      emit(state.copyWith(apiStatus: const GameMessagesLoadStatus.loading()));
      final startTime = DateTime.now();

      final message = temp.lastWhere((element) => element.source == null);

      final result = await _synthesizeUseCase.call(
          params: TextToSpeechRequest(
              modelId: "eleven_multilingual_v2",
              voiceId: message.player.voice.voiceId!,
              text: message.message.text,
              voiceSettings: message.player.voice.voiceSettings));

      if (result.isRight) {
        final audioMessage =
            message.copyWith(source: BytesSource(result.right));

        final index = temp
            .indexWhere((element) => element.message.id == message.message.id);
        temp.removeAt(index);
        temp.insert(index, audioMessage);

        logger.d(
            """AUDIO LOADED [$index] millis ${DateTime.now().difference(startTime).inMilliseconds}
            ${message.message.timestamp} - ${message.message.author}: ${message.message.text}
            """);

        emit(state.copyWith(
            apiStatus: const GameMessagesLoadStatus.loaded(),
            status: const GameMessagesStatus.loaded(),
            messages: temp));
      } else {
        logger.e("Error during API ", error: result.left);
        emit(state.copyWith(
          status: GameMessagesStatus.error(result.left,
              "Error during API for message ${message.toString()}"),
        ));
      }
    }
  }
}
