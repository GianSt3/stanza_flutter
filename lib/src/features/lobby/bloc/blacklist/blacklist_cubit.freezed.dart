// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blacklist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlacklistState _$BlacklistStateFromJson(Map<String, dynamic> json) {
  return _BlacklistState.fromJson(json);
}

/// @nodoc
mixin _$BlacklistState {
  BlacklistStatus get status => throw _privateConstructorUsedError;
  List<String> get lobby => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlacklistStateCopyWith<BlacklistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlacklistStateCopyWith<$Res> {
  factory $BlacklistStateCopyWith(
          BlacklistState value, $Res Function(BlacklistState) then) =
      _$BlacklistStateCopyWithImpl<$Res, BlacklistState>;
  @useResult
  $Res call({BlacklistStatus status, List<String> lobby});

  $BlacklistStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$BlacklistStateCopyWithImpl<$Res, $Val extends BlacklistState>
    implements $BlacklistStateCopyWith<$Res> {
  _$BlacklistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lobby = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlacklistStatus,
      lobby: null == lobby
          ? _value.lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlacklistStatusCopyWith<$Res> get status {
    return $BlacklistStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlacklistStateImplCopyWith<$Res>
    implements $BlacklistStateCopyWith<$Res> {
  factory _$$BlacklistStateImplCopyWith(_$BlacklistStateImpl value,
          $Res Function(_$BlacklistStateImpl) then) =
      __$$BlacklistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlacklistStatus status, List<String> lobby});

  @override
  $BlacklistStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$BlacklistStateImplCopyWithImpl<$Res>
    extends _$BlacklistStateCopyWithImpl<$Res, _$BlacklistStateImpl>
    implements _$$BlacklistStateImplCopyWith<$Res> {
  __$$BlacklistStateImplCopyWithImpl(
      _$BlacklistStateImpl _value, $Res Function(_$BlacklistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lobby = null,
  }) {
    return _then(_$BlacklistStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlacklistStatus,
      lobby: null == lobby
          ? _value._lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlacklistStateImpl implements _BlacklistState {
  const _$BlacklistStateImpl(
      {required this.status, final List<String> lobby = const <String>[]})
      : _lobby = lobby;

  factory _$BlacklistStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlacklistStateImplFromJson(json);

  @override
  final BlacklistStatus status;
  final List<String> _lobby;
  @override
  @JsonKey()
  List<String> get lobby {
    if (_lobby is EqualUnmodifiableListView) return _lobby;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lobby);
  }

  @override
  String toString() {
    return 'BlacklistState(status: $status, lobby: $lobby)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlacklistStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._lobby, _lobby));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_lobby));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlacklistStateImplCopyWith<_$BlacklistStateImpl> get copyWith =>
      __$$BlacklistStateImplCopyWithImpl<_$BlacklistStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlacklistStateImplToJson(
      this,
    );
  }
}

abstract class _BlacklistState implements BlacklistState {
  const factory _BlacklistState(
      {required final BlacklistStatus status,
      final List<String> lobby}) = _$BlacklistStateImpl;

  factory _BlacklistState.fromJson(Map<String, dynamic> json) =
      _$BlacklistStateImpl.fromJson;

  @override
  BlacklistStatus get status;
  @override
  List<String> get lobby;
  @override
  @JsonKey(ignore: true)
  _$$BlacklistStateImplCopyWith<_$BlacklistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlacklistStatus _$BlacklistStatusFromJson(Map<String, dynamic> json) {
  return _BlacklistStatusInitial.fromJson(json);
}

/// @nodoc
mixin _$BlacklistStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlacklistStatusInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlacklistStatusInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlacklistStatusInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlacklistStatusCopyWith<$Res> {
  factory $BlacklistStatusCopyWith(
          BlacklistStatus value, $Res Function(BlacklistStatus) then) =
      _$BlacklistStatusCopyWithImpl<$Res, BlacklistStatus>;
}

/// @nodoc
class _$BlacklistStatusCopyWithImpl<$Res, $Val extends BlacklistStatus>
    implements $BlacklistStatusCopyWith<$Res> {
  _$BlacklistStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlacklistStatusInitialImplCopyWith<$Res> {
  factory _$$BlacklistStatusInitialImplCopyWith(
          _$BlacklistStatusInitialImpl value,
          $Res Function(_$BlacklistStatusInitialImpl) then) =
      __$$BlacklistStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlacklistStatusInitialImplCopyWithImpl<$Res>
    extends _$BlacklistStatusCopyWithImpl<$Res, _$BlacklistStatusInitialImpl>
    implements _$$BlacklistStatusInitialImplCopyWith<$Res> {
  __$$BlacklistStatusInitialImplCopyWithImpl(
      _$BlacklistStatusInitialImpl _value,
      $Res Function(_$BlacklistStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BlacklistStatusInitialImpl implements _BlacklistStatusInitial {
  const _$BlacklistStatusInitialImpl();

  factory _$BlacklistStatusInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlacklistStatusInitialImplFromJson(json);

  @override
  String toString() {
    return 'BlacklistStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlacklistStatusInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlacklistStatusInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlacklistStatusInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlacklistStatusInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlacklistStatusInitialImplToJson(
      this,
    );
  }
}

abstract class _BlacklistStatusInitial implements BlacklistStatus {
  const factory _BlacklistStatusInitial() = _$BlacklistStatusInitialImpl;

  factory _BlacklistStatusInitial.fromJson(Map<String, dynamic> json) =
      _$BlacklistStatusInitialImpl.fromJson;
}
