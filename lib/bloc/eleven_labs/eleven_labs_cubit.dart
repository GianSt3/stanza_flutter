import 'dart:ffi';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'eleven_labs_state.dart';

part 'eleven_labs_cubit.freezed.dart';

class ElevenLabsCubit extends Cubit<ElevenLabsState> {
  final ElevenLabsAPI api;

  ElevenLabsCubit(this.api)
      : super(const ElevenLabsState(status: ElevenLabStatus.initial()));

  void speak(
      {required String voiceId,
      required String text,
      String modelId = "eleven_multilingual_v2",
      VoiceSettings? voiceSettings}) async {
    final hash = shortHash(text);
    final player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.release);

    emit(state.copyWith(status: const ElevenLabStatus.loading()));

    try {
      final result = await api.synthesize(TextToSpeechRequest(
          modelId: modelId,
          voiceId: voiceId,
          text: text,
          voiceSettings: voiceSettings));

      await player.play(BytesSource(result));

      emit(state.copyWith(status: ElevenLabStatus.spoke(hash, result)));
    } catch (error) {
      emit(state.copyWith(status: ElevenLabStatus.error(error.toString())));
    }
  }
}
