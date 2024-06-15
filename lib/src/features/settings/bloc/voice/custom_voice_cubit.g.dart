// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_voice_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomVoiceStateImpl _$$CustomVoiceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomVoiceStateImpl(
      status:
          CustomVoiceStatus.fromJson(json['status'] as Map<String, dynamic>),
      voices: (json['voices'] as List<dynamic>?)
              ?.map((e) => CustomVoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CustomVoice>[],
    );

Map<String, dynamic> _$$CustomVoiceStateImplToJson(
        _$CustomVoiceStateImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'voices': instance.voices,
    };

_$CustomVoiceInitialImpl _$$CustomVoiceInitialImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomVoiceInitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomVoiceInitialImplToJson(
        _$CustomVoiceInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CustomVoiceSelectedImpl _$$CustomVoiceSelectedImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomVoiceSelectedImpl(
      Voice.fromJson(json['voice'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomVoiceSelectedImplToJson(
        _$CustomVoiceSelectedImpl instance) =>
    <String, dynamic>{
      'voice': instance.voice,
      'runtimeType': instance.$type,
    };

_$CustomVoiceCustomizeImpl _$$CustomVoiceCustomizeImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomVoiceCustomizeImpl(
      Voice.fromJson(json['voice'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomVoiceCustomizeImplToJson(
        _$CustomVoiceCustomizeImpl instance) =>
    <String, dynamic>{
      'voice': instance.voice,
      'runtimeType': instance.$type,
    };

_$CustomVoiceSavedImpl _$$CustomVoiceSavedImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomVoiceSavedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomVoiceSavedImplToJson(
        _$CustomVoiceSavedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CustomVoiceEditedImpl _$$CustomVoiceEditedImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomVoiceEditedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomVoiceEditedImplToJson(
        _$CustomVoiceEditedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
