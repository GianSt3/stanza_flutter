import 'package:eleven_labs/eleven_labs.dart';
import 'package:eleven_labs/elevenlabs_types.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'custom_voice_state.dart';

part 'custom_voice_cubit.freezed.dart';

part 'custom_voice_cubit.g.dart';

class CustomVoiceCubit extends HydratedCubit<CustomVoiceState> {
  CustomVoiceCubit()
      : super(const CustomVoiceState(
            status: CustomVoiceStatus.initial(), voices: []));

  void selected(Voice voice) {
    emit(state.copyWith(status: CustomVoiceStatus.selected(voice)));
  }

  void reset() {
    emit(state.copyWith(status: const CustomVoiceStatus.initial()));
  }

  void save({
    required String voiceId,
    required String voiceName,
    VoiceSettings? settings,
  }) {
    emit(state.copyWith(status: const CustomVoiceStatus.initial(), voices: [
      ...state.voices,
      CustomVoice(voiceId: voiceId, voiceSettings: settings, name: voiceName)
    ]));
  }

  void delete(CustomVoice voice) {
    var voices = state.voices.toList();
    voices.remove(voice);
    emit(state.copyWith(
        status: const CustomVoiceStatus.initial(), voices: voices));
  }

  @override
  CustomVoiceState? fromJson(Map<String, dynamic> json) {
    final jsonState = CustomVoiceState.fromJson(json);
    debugPrint("fromJson:\n\tfrom-> $json\n\tto->$jsonState");
    return jsonState;
  }

  @override
  Map<String, dynamic>? toJson(CustomVoiceState state) {
    final json = state.toJson();
    debugPrint("toJson:\n\tfrom-> $state\n\tto->$json");
    return json;
  }
}
