import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll.freezed.dart';
part 'poll.g.dart';

@freezed
class Poll with _$Poll {
  const Poll._();

  const factory Poll(
      {required String question,
      required List<String> answers,
      bool? favorite}) = _Poll;

  bool get isFavorite => favorite ?? false;

  factory Poll.fromJson(Map<String, Object?> json) => _$PollFromJson(json);
}
