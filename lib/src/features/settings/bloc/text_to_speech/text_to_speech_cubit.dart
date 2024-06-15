import 'dart:ffi';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/synthesize_use_case.dart';
import 'package:stanza_scrapper/main.dart';

part 'text_to_speech_state.dart';

part 'text_to_speech_cubit.freezed.dart';

class TextToSpeechCubit extends Cubit<TextToSpeechState> {
  final SynthesizeUseCase _synthesizeUseCase = SynthesizeUseCase(injector());

  TextToSpeechCubit()
      : super(const TextToSpeechState(status: TextToSpeechStatus.initial()));

  void speak(
      {required String voiceId,
      required String text,
      String modelId = "eleven_multilingual_v2",
      VoiceSettings? voiceSettings}) async {
    final hash = shortHash(text);
    final player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.release);

    emit(state.copyWith(status: const TextToSpeechStatus.loading()));

    final result = await _synthesizeUseCase.call(
        params: TextToSpeechRequest(
            modelId: modelId,
            voiceId: voiceId,
            text: text,
            voiceSettings: voiceSettings));

    if (result.isRight) {
      await player.play(BytesSource(result.right));
      emit(
          state.copyWith(status: TextToSpeechStatus.spoke(hash, result.right)));
    } else {
      emit(state.copyWith(
          status: TextToSpeechStatus.error(result.left.toString())));
    }
  }
}
