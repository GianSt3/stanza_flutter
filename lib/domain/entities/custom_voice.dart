import 'package:eleven_labs/eleven_labs.dart';

enum ModelId {
  v1("eleven_multilingual_v1"),
  v2("eleven_multilingual_v2");

  final String value;

  const ModelId(this.value);

  static ModelId fromString(String s) {
    return ModelId.values.firstWhere((v) => v.value == s);
  }
}

class CustomVoice {
  String? voiceId;
  String? name;
  String? originalName;
  VoiceSettings? voiceSettings;
  ModelId? modelId;

  CustomVoice(
      {this.voiceId = '',
      this.name,
      this.originalName,
      this.voiceSettings,
      this.modelId = ModelId.v2});

  Map<String, dynamic> toJson() {
    return {
      "voiceId": voiceId,
      "name": name,
      "originalName": originalName,
      "voiceSettings": voiceSettings?.toJson()
    };
  }

  CustomVoice.fromJson(Map<String, dynamic> json) {
    voiceId = json["voiceId"];
    name = json["name"];
    originalName = json["originalName"];
    voiceSettings = json["voiceSettings"] != null
        ? VoiceSettings.fromJson(json["voiceSettings"])
        : null;
    modelId = json["modelId"] != null
        ? ModelId.fromString(json["modelId"])
        : ModelId.v2;
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
    return 'CustomVoice{voiceId: $voiceId, name: $name, original name: $originalName, model: $modelId, voiceSettings: $voiceSettings}';
  }
}
