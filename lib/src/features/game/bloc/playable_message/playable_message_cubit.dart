import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        final files = [
          "caspita_ho_appena_lanciato_un_dado",
          "evviva_ho_lanciato_un_dado",
          "ma_siamo_sicuri_non_stia_barando",
          "non_ci_posso_credere",
          "un_tiro_molto_fortunato",
          "ehi_come_stai_amico_mio"
        ];
        final fileName = text.startsWith("Caspita")
            ? files[0]
            : text.startsWith("Evviva")
                ? files[1]
                : text.startsWith("Ehi")
                    ? files[2]
                    : text.startsWith("Non")
                        ? files[3]
                        : text.startsWith("Un")
                            ? files[4]
                            : text.startsWith("Come")
                                ? files[5]
                                : "";
        final result = (await rootBundle.load("assets/audio/$fileName.mp3"))
            .buffer
            .asUint8List();

        logger.d("Text: ${text} => Audio $fileName");

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
