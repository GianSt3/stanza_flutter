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

class CustomVoice {
  String? voiceId;
  String? name;
  VoiceSettings? voiceSettings;

  CustomVoice({
    this.voiceId,
    this.name,
    this.voiceSettings,
  });

  Map<String, dynamic> toJson() {
    return {
      "voiceId": voiceId,
      "name": name,
      "voiceSettings": voiceSettings?.toJson()
    };
  }

  CustomVoice.fromJson(Map<String, dynamic> json) {
    voiceId = json["voiceId"];
    name = json["name"];
    voiceSettings = json["voiceSettings"] != null
        ? VoiceSettings.fromJson(json["voiceSettings"])
        : null;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomVoice &&
          runtimeType == other.runtimeType &&
          voiceId == other.voiceId &&
          name == other.name;

  @override
  int get hashCode => voiceId.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'CustomVoice{voiceId: $voiceId, name: $name, voiceSettings: $voiceSettings}';
  }
}
