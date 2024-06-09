part of 'custom_voice_cubit.dart';

@freezed
class CustomVoiceState with _$CustomVoiceState {
  const factory CustomVoiceState(
      {required CustomVoiceStatus status,
      @Default(<CustomVoice>[]) List<CustomVoice> voices}) = _CustomVoiceState;

  factory CustomVoiceState.fromJson(Map<String, Object?> json) =>
      _$CustomVoiceStateFromJson(json);
}

@freezed
class CustomVoiceStatus with _$CustomVoiceStatus {
  const factory CustomVoiceStatus.initial() = _CustomVoiceInitial;

  const factory CustomVoiceStatus.selected(Voice voice) = _CustomVoiceSelected;

  const factory CustomVoiceStatus.customize(Voice voice) =
      _CustomVoiceCustomize;

  const factory CustomVoiceStatus.saved() = _CustomVoiceSaved;

  const factory CustomVoiceStatus.edited() = _CustomVoiceEdited;

  factory CustomVoiceStatus.fromJson(Map<String, Object?> json) =>
      _$CustomVoiceStatusFromJson(json);
}


