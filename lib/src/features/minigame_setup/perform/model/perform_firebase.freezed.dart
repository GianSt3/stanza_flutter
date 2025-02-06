// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perform_firebase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PerformFirebase _$PerformFirebaseFromJson(Map<String, dynamic> json) {
  return _PerformFirebase.fromJson(json);
}

/// @nodoc
mixin _$PerformFirebase {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformFirebaseCopyWith<PerformFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformFirebaseCopyWith<$Res> {
  factory $PerformFirebaseCopyWith(
          PerformFirebase value, $Res Function(PerformFirebase) then) =
      _$PerformFirebaseCopyWithImpl<$Res, PerformFirebase>;
  @useResult
  $Res call({String title, String content, String nickname, String deviceId});
}

/// @nodoc
class _$PerformFirebaseCopyWithImpl<$Res, $Val extends PerformFirebase>
    implements $PerformFirebaseCopyWith<$Res> {
  _$PerformFirebaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? nickname = null,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformFirebaseImplCopyWith<$Res>
    implements $PerformFirebaseCopyWith<$Res> {
  factory _$$PerformFirebaseImplCopyWith(_$PerformFirebaseImpl value,
          $Res Function(_$PerformFirebaseImpl) then) =
      __$$PerformFirebaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, String nickname, String deviceId});
}

/// @nodoc
class __$$PerformFirebaseImplCopyWithImpl<$Res>
    extends _$PerformFirebaseCopyWithImpl<$Res, _$PerformFirebaseImpl>
    implements _$$PerformFirebaseImplCopyWith<$Res> {
  __$$PerformFirebaseImplCopyWithImpl(
      _$PerformFirebaseImpl _value, $Res Function(_$PerformFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? nickname = null,
    Object? deviceId = null,
  }) {
    return _then(_$PerformFirebaseImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformFirebaseImpl extends _PerformFirebase {
  const _$PerformFirebaseImpl(
      {required this.title,
      required this.content,
      required this.nickname,
      required this.deviceId})
      : super._();

  factory _$PerformFirebaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformFirebaseImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String nickname;
  @override
  final String deviceId;

  @override
  String toString() {
    return 'PerformFirebase(title: $title, content: $content, nickname: $nickname, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformFirebaseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, content, nickname, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformFirebaseImplCopyWith<_$PerformFirebaseImpl> get copyWith =>
      __$$PerformFirebaseImplCopyWithImpl<_$PerformFirebaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformFirebaseImplToJson(
      this,
    );
  }
}

abstract class _PerformFirebase extends PerformFirebase {
  const factory _PerformFirebase(
      {required final String title,
      required final String content,
      required final String nickname,
      required final String deviceId}) = _$PerformFirebaseImpl;
  const _PerformFirebase._() : super._();

  factory _PerformFirebase.fromJson(Map<String, dynamic> json) =
      _$PerformFirebaseImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get nickname;
  @override
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$PerformFirebaseImplCopyWith<_$PerformFirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
