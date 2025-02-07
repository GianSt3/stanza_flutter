import 'package:uuid/uuid.dart';

import 'poll.dart';

class PollFirebase {
  final String question;
  final List<Answer> answers;

  PollFirebase({
    required this.question,
    required this.answers,
  });

  factory PollFirebase.fromPoll(Poll poll) {
    return PollFirebase(
      question: poll.question,
      answers: poll.answers
          .map((answer) => Answer(text: answer, id: const Uuid().v4()))
          .toList(),
    );
  }

  factory PollFirebase.fromJson(Map<String, dynamic> json) {
    return PollFirebase(
      question: json['question'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answers': answers.map((e) => e.toJson()).toList(),
    };
  }
}

class Answer {
  final String text;
  final String id;

  Answer({
    required this.text,
    required this.id,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      text: json['text'] as String,
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'id': id,
    };
  }
}
