// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blacklist_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlacklistStateImpl _$$BlacklistStateImplFromJson(Map<String, dynamic> json) =>
    _$BlacklistStateImpl(
      status: BlacklistStatus.fromJson(json['status'] as Map<String, dynamic>),
      lobby:
          (json['lobby'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$BlacklistStateImplToJson(
        _$BlacklistStateImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'lobby': instance.lobby,
    };

_$BlacklistStatusInitialImpl _$$BlacklistStatusInitialImplFromJson(
        Map<String, dynamic> json) =>
    _$BlacklistStatusInitialImpl();

Map<String, dynamic> _$$BlacklistStatusInitialImplToJson(
        _$BlacklistStatusInitialImpl instance) =>
    <String, dynamic>{};
