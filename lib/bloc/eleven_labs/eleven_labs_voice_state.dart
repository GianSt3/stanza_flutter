part of 'eleven_labs_voice_cubit.dart';

@freezed
class ElevenLabsVoiceState with _$ElevenLabsVoiceState {
  factory ElevenLabsVoiceState({
    required ElevenLabsVoiceStatus status,
    @Default(<Voice>[]) List<Voice> voices,
  }) = _ElevenLabsVoiceState;

  factory ElevenLabsVoiceState.fromJson(Map<String, Object?> json) =>
      _$ElevenLabsVoiceStateFromJson(json);
}

@freezed
class ElevenLabsVoiceStatus with _$ElevenLabsVoiceStatus {
  const factory ElevenLabsVoiceStatus.initial() = _VoiceInitial;

  const factory ElevenLabsVoiceStatus.refreshing() = _VoiceRefreshing;

  const factory ElevenLabsVoiceStatus.loaded() = _VoiceLoaded;

  const factory ElevenLabsVoiceStatus.error() = _VoiceError;

  factory ElevenLabsVoiceStatus.fromJson(Map<String, Object?> json) =>
      _$ElevenLabsVoiceStatusFromJson(json);
}
