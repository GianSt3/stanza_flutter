// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perform_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      (json['performs'] as List<dynamic>)
          .map((e) => Perform.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'performs': instance.performs,
      'runtimeType': instance.$type,
    };

_$LoadedImpl _$$LoadedImplFromJson(Map<String, dynamic> json) => _$LoadedImpl(
      (json['performs'] as List<dynamic>)
          .map((e) => Perform.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedImplToJson(_$LoadedImpl instance) =>
    <String, dynamic>{
      'performs': instance.performs,
      'runtimeType': instance.$type,
    };
