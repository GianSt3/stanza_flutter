import 'package:eleven_labs/eleven_labs.dart';
import 'package:eleven_labs/elevenlabs_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:stanza_scrapper/domain/entities/custom_voice.dart';

part 'custom_voice_cubit.freezed.dart';
part 'custom_voice_cubit.g.dart';
part 'custom_voice_state.dart';

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
    required String voiceOriginalName,
    required ModelId modelId,
    VoiceSettings? settings,
  }) {
    emit(state.copyWith(status: const CustomVoiceStatus.initial(), voices: [
      ...state.voices,
      CustomVoice(
          voiceId: voiceId,
          voiceSettings: settings,
          name: voiceName,
          modelId: modelId)
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
    return jsonState;
  }

  @override
  Map<String, dynamic>? toJson(CustomVoiceState state) {
    final json = state.toJson();
    return json;
  }
}
