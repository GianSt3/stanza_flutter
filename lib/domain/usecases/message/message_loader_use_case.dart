import 'package:audioplayers/audioplayers.dart';
import 'package:either_dart/either.dart';
import 'package:eleven_labs/elevenlabs_types.dart';
import 'package:flutter/services.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/synthesize_use_case.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/audio_message.dart';
import 'package:stanza_scrapper/utils/logger.dart';

import '../commands/me_use_case.dart';
import '../dice/dice_use_case.dart';

class MessageLoaderUseCase extends FutureUseCase<
    Either<Exception, GameMessagesState>, GameMessagesState> {
  MessageLoaderUseCase({required ISynthesizeUseCase synthesize})
      : _synthesizeUseCase = synthesize;

  late final ISynthesizeUseCase _synthesizeUseCase;

  final DiceUseCase _diceUseCase = DiceUseCase();
  final MeUseCase _meUseCase = MeUseCase();

  @override
  Future<Either<Exception, GameMessagesState>> call(
      {required GameMessagesState params}) async {
    var messageList = params.messages.toList();

    if (messageList.isEmpty ||
        messageList
            .lastIndexWhere((element) => element.source == null)
            .isNegative) {
      return Left(Exception(
          "Message list is empty or there's no need to load any audio source."));
    }

    final startTime = DateTime.now();

    final message = messageList.lastWhere((element) => element.source == null);
    final messageId = messageList
        .indexWhere((element) => element.message.id == message.message.id);

    /// DICE COMMANDS
    final diceCommands = _diceUseCase(params: message.message.text);
    if (diceCommands.isRight) {
      final textWithDiceResults = diceCommands.right.join(', ');

      final audioMessage = message.copyWith(
          source: BytesSource(
            (await rootBundle
                    .load('assets/audio/shake-and-roll-dice-soundbible.mp3'))
                .buffer
                .asUint8List(),
          ),
          audioType: AudioType.dice,
          // Change the text with the results
          message: message.message.copyWith(
            text: textWithDiceResults,
          ));

      logger.d(
          """DICE LOADED [$messageId] millis ${DateTime.now().difference(startTime).inMilliseconds}
            ${message.message.timestamp} - ${message.message.author}: ${message.message.text}
            """);

      return Right(
        _loadSource(messageList, params, message, audioMessage),
      );
    }

    /// ME COMMAND
    final meCommand = _meUseCase(params: message.message.text);
    if (meCommand.isRight) {
      /// MESSAGE OUT OF CHARACTER

      final audioMessage = message.copyWith(
          source: BytesSource(
            (await rootBundle.load('assets/audio/pop_up_sound_effect.mp3'))
                .buffer
                .asUint8List(),
          ),
          audioType: AudioType.me,
          // Change the text with the results
          message: message.message.copyWith(
            text: meCommand.right,
          ));

      logger.d(
          """ME LOADED [$messageId] millis ${DateTime.now().difference(startTime).inMilliseconds}
            ${message.message.timestamp} - ${message.message.author}: ${message.message.text}
            """);

      return Right(
        _loadSource(messageList, params, message, audioMessage),
      );
    }

    /// WITHOUT ANY COMMAND

    switch (message.audioType) {
      case AudioType.textToSpeech:

        /// TEXT TO SPEECH
        final result = await _synthesizeUseCase.call(
            params: TextToSpeechRequest(
                modelId: "eleven_multilingual_v2",
                voiceId: message.player.voice.voiceId!,
                text: message.message.text,
                voiceSettings: message.player.voice.voiceSettings));

        if (result.isRight) {
          final audioMessage =
              message.copyWith(source: BytesSource(result.right));

          logger.d(
              """AUDIO LOADED [$messageId] millis ${DateTime.now().difference(startTime).inMilliseconds}
            ${message.message.timestamp} - ${message.message.author}: ${message.message.text}
            """);

          return Right(
            _loadSource(messageList, params, message, audioMessage),
          );
        } else {
          logger.e("Error during API ", error: result.left);
          return Left(result.left);
        }

      case AudioType.silence:

        /// SILENCE
        final audioMessage = message.copyWith(
            source: BytesSource(
              (await rootBundle.load('assets/audio/silence_sound_effect.mp3'))
                  .buffer
                  .asUint8List(),
            ),
            audioType: AudioType.silence,
            // maybe I can remove this
            message: message.message.copyWith(
              text: message.message.text,
            ));

        logger.d(
            """SILENCE LOADED [$messageId] millis ${DateTime.now().difference(startTime).inMilliseconds}
            ${message.message.timestamp} - ${message.message.author}: ${message.message.text}
            """);

        return Right(
          _loadSource(messageList, params, message, audioMessage),
        );

      default:
    }

    return Left(Exception("Something wrong with this message."));
  }

  /// Change the message from the list, loading the actual sound and/or text
  GameMessagesState _loadSource(
      List<AudioMessage> temp,
      GameMessagesState params,
      AudioMessage message,
      AudioMessage audioMessage) {
    final index =
        temp.indexWhere((element) => element.message.id == message.message.id);
    temp.removeAt(index);
    temp.insert(index, audioMessage);

    return params.copyWith(
      apiStatus: const GameMessagesLoadStatus.loaded(),
      status: const GameMessagesStatus.loaded(),
      messages: temp,
    );
  }
}
