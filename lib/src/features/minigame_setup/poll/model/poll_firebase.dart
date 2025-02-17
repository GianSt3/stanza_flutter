import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

import 'poll.dart';

class PollFirebase {
  final String question;
  final List<Answer> answers;
  final Timestamp timestamp;
  final Timestamp dueTime;

  PollFirebase({
    required this.question,
    required this.answers,
    required this.timestamp,
    required this.dueTime,
  });

  factory PollFirebase.fromPoll(Poll poll, Timestamp dueTime) {
    return PollFirebase(
      question: poll.question,
      answers: poll.answers
          .map((answer) => Answer(text: answer, id: const Uuid().v4()))
          .toList(),
      timestamp: Timestamp.now(),
      dueTime: dueTime,
    );
  }

  factory PollFirebase.fromJson(Map<String, dynamic> json) {
    return PollFirebase(
      question: json['question'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: json['timestamp'] as Timestamp,
      dueTime: json['dueTime'] as Timestamp,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answers': answers.map((e) => e.toJson()).toList(),
      'timestamp': timestamp,
      'dueTime': dueTime,
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
