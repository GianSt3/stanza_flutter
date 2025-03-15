import 'package:cloud_firestore/cloud_firestore.dart';

class PressedFromFirebase {
  final String nickname;
  final String deviceId;
  final int times;
  final Timestamp timestamp;

  PressedFromFirebase({
    required this.nickname,
    required this.deviceId,
    required this.times,
    required this.timestamp,
  });

  factory PressedFromFirebase.fromJson(Map<String, dynamic> json) {
    return PressedFromFirebase(
      nickname: json['nickname'] as String,
      deviceId: json['deviceId'] as String,
      times: json['times'] as int,
      timestamp: json['timestamp'] as Timestamp,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nickname': nickname,
      'deviceId': deviceId,
      'times': times,
      'timestamp': timestamp,
    };
  }
}
