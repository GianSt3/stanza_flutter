import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:elevenlabs_flutter/elevenlabs_config.dart';
import 'package:elevenlabs_flutter/elevenlabs_types.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:elevenlabs_flutter/elevenlabs_flutter.dart';
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

  void speak() async {
    final player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.release);

    final result = await api.synthesize(TextToSpeechRequest(
      voiceId: '21m00Tcm4TlvDq8ikWAM',
      text: 'Ciao a tutti, manzi e manzini',
    ));

    await player.play(BytesSource(result));
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
