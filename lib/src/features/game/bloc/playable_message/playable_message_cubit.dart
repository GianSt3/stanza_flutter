import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/bloc/scrapper/mock_messages.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/utils/logger.dart';

part 'playable_message_state.dart';

part 'playable_message_cubit.freezed.dart';

class PlayableMessageCubit extends Cubit<PlayableMessageState> {
  final Player player;
  final ElevenLabsAPI api;

  PlayableMessageCubit(this.player, this.api)
      : super(const PlayableMessageState.initial("", ""));

  void speak(
      {required String timestamp,
      required String text,
      bool shouldPlay = true}) async {
    if (state.text != text) {
      emit(PlayableMessageState.loading(timestamp, text));
      if (shouldPlay) {

        final result = await getAudio(text);

        // final result = await api.synthesize(TextToSpeechRequest(
        //     modelId: "eleven_multilingual_v2",
        //     voiceId: player.voice.voiceId!,
        //     text: text,
        //     voiceSettings: player.voice.voiceSettings));
        emit(PlayableMessageState.play(timestamp, text, BytesSource(result)));
      } else {
        emit(PlayableMessageState.play(timestamp, text, null));
      }
    }
  }
}
