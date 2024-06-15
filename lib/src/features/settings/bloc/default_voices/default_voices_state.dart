part of 'default_voices_cubit.dart';

@freezed
class DefaultVoicesState with _$DefaultVoicesState {
  factory DefaultVoicesState({
    required DefaultVoicesStatus status,
    @Default(<Voice>[]) List<Voice> voices,
  }) = _DefaultVoicesState;

  factory DefaultVoicesState.fromJson(Map<String, Object?> json) =>
      _$DefaultVoicesStateFromJson(json);
}

@freezed
class DefaultVoicesStatus with _$DefaultVoicesStatus {
  const factory DefaultVoicesStatus.initial() = _VoiceInitial;

  const factory DefaultVoicesStatus.refreshing() = _VoiceRefreshing;

  const factory DefaultVoicesStatus.loaded() = _VoiceLoaded;

  const factory DefaultVoicesStatus.error() = _VoiceError;

  factory DefaultVoicesStatus.fromJson(Map<String, Object?> json) =>
      _$DefaultVoicesStatusFromJson(json);
}
