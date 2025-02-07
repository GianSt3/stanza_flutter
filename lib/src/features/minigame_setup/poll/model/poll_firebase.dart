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
          .map((answer) => Answer(text: answer, votes: []))
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
  final List<Vote> votes;

  Answer({
    required this.text,
    required this.votes,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      text: json['text'] as String,
      votes: (json['votes'] as List<dynamic>)
          .map((e) => Vote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'votes': votes.map((e) => e.toJson()).toList(),
    };
  }
}

class Vote {
  final String nickname;
  final String deviceId;

  Vote({
    required this.nickname,
    required this.deviceId,
  });

  factory Vote.fromJson(Map<String, dynamic> json) {
    return Vote(
      nickname: json['nickname'] as String,
      deviceId: json['deviceId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nickname': nickname,
      'deviceId': deviceId,
    };
  }
}
