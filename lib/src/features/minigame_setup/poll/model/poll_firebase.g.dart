// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_firebase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollFirebaseImpl _$$PollFirebaseImplFromJson(Map<String, dynamic> json) =>
    _$PollFirebaseImpl(
      question: json['question'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PollFirebaseImplToJson(_$PollFirebaseImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answers': instance.answers,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      text: json['text'] as String,
      votes: (json['votes'] as List<dynamic>)
          .map((e) => Vote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'votes': instance.votes,
    };

_$VoteImpl _$$VoteImplFromJson(Map<String, dynamic> json) => _$VoteImpl(
      nickname: json['nickname'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$VoteImplToJson(_$VoteImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'deviceId': instance.deviceId,
    };
