import 'perform.dart';

class PerformFirebase {
  final String title;
  final String content;
  final String nickname;
  final String deviceId;

  /// Nullable boolean to indicate acceptance
  final bool? accept;

  PerformFirebase({
    required this.title,
    required this.content,
    required this.nickname,
    required this.deviceId,
    this.accept,
  });

  factory PerformFirebase.fromPerform(
      Perform perform, String nickname, String deviceId,
      {bool? accept}) {
    return PerformFirebase(
      title: perform.title,
      content: perform.content,
      nickname: nickname,
      deviceId: deviceId,
      accept: accept,
    );
  }

  factory PerformFirebase.fromJson(Map<String, dynamic> json) {
    return PerformFirebase(
      title: json['title'] as String,
      content: json['content'] as String,
      nickname: json['nickname'] as String,
      deviceId: json['deviceId'] as String,
      accept: json['accept'] as bool?, // Parse the nullable boolean
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'nickname': nickname,
      'deviceId': deviceId,
      'accept': accept, // Include the nullable boolean in the JSON
    };
  }
}
