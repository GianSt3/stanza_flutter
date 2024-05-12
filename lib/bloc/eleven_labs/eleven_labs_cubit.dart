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

  void voices() async {
    final voices = await api.listVoices();
    print(voices.map((e) => e.voiceId));
  }

  void speak(
      {required String voiceId,
      required String text,
      VoiceSettings? voiceSettings}) async {
    final hash = shortHash(text);
    print("Using $voiceId to say $text\nWith hash $hash");
    final player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.release);

    emit(state.copyWith(status: const ElevenLabStatus.loading()));

    final result = await api.synthesize(TextToSpeechRequest(
        modelId: "eleven_multilingual_v2",
        voiceId: voiceId,
        text: text,
        voiceSettings: voiceSettings));

    // TODO emit ByteSource
    await player.play(BytesSource(result));

    emit(state.copyWith(status: ElevenLabStatus.spoke(hash, result)));
  }

// @override
// ElevenLabsState? fromJson(Map<String, dynamic> json) {
//   return const ElevenLabsState(status: ElevenLabStatus.initial());
// }
//
// @override
// Map<String, dynamic>? toJson(ElevenLabsState state) {
//   return {};
// }
}
