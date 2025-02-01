import 'package:freezed_annotation/freezed_annotation.dart';

part 'perform.freezed.dart';
part 'perform.g.dart';

@freezed
class Perform with _$Perform {
  const Perform._();

  const factory Perform({
    required String title,
    required String content,
    bool? favorite,
  }) = _Perform;

  bool get isFavorite => favorite ?? false;

  factory Perform.fromJson(Map<String, Object?> json) =>
      _$PerformFromJson(json);
}
