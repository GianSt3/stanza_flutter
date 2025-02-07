import 'perform.dart';

class PerformFirebase {
  final String title;
  final String content;
  final String nickname;
  final String deviceId;

  PerformFirebase({
    required this.title,
    required this.content,
    required this.nickname,
    required this.deviceId,
  });

  factory PerformFirebase.fromPerform(
      Perform perform, String nickname, String deviceId) {
    return PerformFirebase(
      title: perform.title,
      content: perform.content,
      nickname: nickname,
      deviceId: deviceId,
    );
  }

  factory PerformFirebase.fromJson(Map<String, dynamic> json) {
    return PerformFirebase(
      title: json['title'] as String,
      content: json['content'] as String,
      nickname: json['nickname'] as String,
      deviceId: json['deviceId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'nickname': nickname,
      'deviceId': deviceId,
    };
  }
}
