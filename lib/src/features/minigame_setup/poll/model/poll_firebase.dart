import 'package:freezed_annotation/freezed_annotation.dart';

import 'poll.dart';

part 'poll_firebase.freezed.dart';
part 'poll_firebase.g.dart';

@freezed
class PollFirebase with _$PollFirebase {
  const PollFirebase._();

  const factory PollFirebase({
    required String question,
    required List<Answer> answers,
  }) = _PollFirebase;

  factory PollFirebase.fromPoll(Poll poll) {
    return PollFirebase(
      question: poll.question,
      answers: poll.answers
          .map((answer) => Answer(text: answer, votes: []))
          .toList(),
    );
  }

  factory PollFirebase.fromJson(Map<String, Object?> json) =>
      _$PollFirebaseFromJson(json);
}

@freezed
class Answer with _$Answer {
  const Answer._();

  const factory Answer({
    required String text,
    required List<Vote> votes,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}

@freezed
class Vote with _$Vote {
  const Vote._();

  const factory Vote({
    required String nickname,
    required String deviceId,
  }) = _Vote;

  factory Vote.fromJson(Map<String, Object?> json) => _$VoteFromJson(json);
}
