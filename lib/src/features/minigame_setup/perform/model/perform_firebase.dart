import 'package:freezed_annotation/freezed_annotation.dart';

import 'perform.dart';

part 'perform_firebase.freezed.dart';
part 'perform_firebase.g.dart';

@freezed
class PerformFirebase with _$PerformFirebase {
  const PerformFirebase._();

  const factory PerformFirebase({
    required String title,
    required String content,
    required String nickname,
    required String deviceId,
  }) = _PerformFirebase;

  factory PerformFirebase.fromJson(Map<String, Object?> json) =>
      _$PerformFirebaseFromJson(json);

  static PerformFirebase fromPerform(
      Perform perform, String nickname, String deviceId) {
    return PerformFirebase(
      title: perform.title,
      content: perform.content,
      nickname: nickname,
      deviceId: deviceId,
    );
  }
}
