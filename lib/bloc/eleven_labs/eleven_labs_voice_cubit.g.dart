// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eleven_labs_voice_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElevenLabsVoiceStateImpl _$$ElevenLabsVoiceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ElevenLabsVoiceStateImpl(
      status: ElevenLabsVoiceStatus.fromJson(
          json['status'] as Map<String, dynamic>),
      voices: (json['voices'] as List<dynamic>?)
              ?.map((e) => Voice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Voice>[],
    );

Map<String, dynamic> _$$ElevenLabsVoiceStateImplToJson(
        _$ElevenLabsVoiceStateImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'voices': instance.voices,
    };

_$VoiceInitialImpl _$$VoiceInitialImplFromJson(Map<String, dynamic> json) =>
    _$VoiceInitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VoiceInitialImplToJson(_$VoiceInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$VoiceRefreshingImpl _$$VoiceRefreshingImplFromJson(
        Map<String, dynamic> json) =>
    _$VoiceRefreshingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VoiceRefreshingImplToJson(
        _$VoiceRefreshingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$VoiceLoadedImpl _$$VoiceLoadedImplFromJson(Map<String, dynamic> json) =>
    _$VoiceLoadedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VoiceLoadedImplToJson(_$VoiceLoadedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$VoiceErrorImpl _$$VoiceErrorImplFromJson(Map<String, dynamic> json) =>
    _$VoiceErrorImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VoiceErrorImplToJson(_$VoiceErrorImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
