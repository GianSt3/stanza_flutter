// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollImpl _$$PollImplFromJson(Map<String, dynamic> json) => _$PollImpl(
      question: json['question'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$$PollImplToJson(_$PollImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answers': instance.answers,
      'favorite': instance.favorite,
    };
