// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LobbyState {
  LobbyStatus get status => throw _privateConstructorUsedError;
  List<QueueingUser> get lobby => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LobbyStateCopyWith<LobbyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyStateCopyWith<$Res> {
  factory $LobbyStateCopyWith(
          LobbyState value, $Res Function(LobbyState) then) =
      _$LobbyStateCopyWithImpl<$Res, LobbyState>;
  @useResult
  $Res call({LobbyStatus status, List<QueueingUser> lobby});

  $LobbyStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$LobbyStateCopyWithImpl<$Res, $Val extends LobbyState>
    implements $LobbyStateCopyWith<$Res> {
  _$LobbyStateCopyWithImpl(this._value, this._then);

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
              as LobbyStatus,
      lobby: null == lobby
          ? _value.lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as List<QueueingUser>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LobbyStatusCopyWith<$Res> get status {
    return $LobbyStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LobbyStateImplCopyWith<$Res>
    implements $LobbyStateCopyWith<$Res> {
  factory _$$LobbyStateImplCopyWith(
          _$LobbyStateImpl value, $Res Function(_$LobbyStateImpl) then) =
      __$$LobbyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LobbyStatus status, List<QueueingUser> lobby});

  @override
  $LobbyStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$LobbyStateImplCopyWithImpl<$Res>
    extends _$LobbyStateCopyWithImpl<$Res, _$LobbyStateImpl>
    implements _$$LobbyStateImplCopyWith<$Res> {
  __$$LobbyStateImplCopyWithImpl(
      _$LobbyStateImpl _value, $Res Function(_$LobbyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lobby = null,
  }) {
    return _then(_$LobbyStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LobbyStatus,
      lobby: null == lobby
          ? _value._lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as List<QueueingUser>,
    ));
  }
}

/// @nodoc

class _$LobbyStateImpl implements _LobbyState {
  const _$LobbyStateImpl(
      {required this.status,
      final List<QueueingUser> lobby = const <QueueingUser>[]})
      : _lobby = lobby;

  @override
  final LobbyStatus status;
  final List<QueueingUser> _lobby;
  @override
  @JsonKey()
  List<QueueingUser> get lobby {
    if (_lobby is EqualUnmodifiableListView) return _lobby;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lobby);
  }

  @override
  String toString() {
    return 'LobbyState(status: $status, lobby: $lobby)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LobbyStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._lobby, _lobby));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_lobby));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LobbyStateImplCopyWith<_$LobbyStateImpl> get copyWith =>
      __$$LobbyStateImplCopyWithImpl<_$LobbyStateImpl>(this, _$identity);
}

abstract class _LobbyState implements LobbyState {
  const factory _LobbyState(
      {required final LobbyStatus status,
      final List<QueueingUser> lobby}) = _$LobbyStateImpl;

  @override
  LobbyStatus get status;
  @override
  List<QueueingUser> get lobby;
  @override
  @JsonKey(ignore: true)
  _$$LobbyStateImplCopyWith<_$LobbyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LobbyStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyStatusCopyWith<$Res> {
  factory $LobbyStatusCopyWith(
          LobbyStatus value, $Res Function(LobbyStatus) then) =
      _$LobbyStatusCopyWithImpl<$Res, LobbyStatus>;
}

/// @nodoc
class _$LobbyStatusCopyWithImpl<$Res, $Val extends LobbyStatus>
    implements $LobbyStatusCopyWith<$Res> {
  _$LobbyStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LobbyStatusInitialImplCopyWith<$Res> {
  factory _$$LobbyStatusInitialImplCopyWith(_$LobbyStatusInitialImpl value,
          $Res Function(_$LobbyStatusInitialImpl) then) =
      __$$LobbyStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LobbyStatusInitialImplCopyWithImpl<$Res>
    extends _$LobbyStatusCopyWithImpl<$Res, _$LobbyStatusInitialImpl>
    implements _$$LobbyStatusInitialImplCopyWith<$Res> {
  __$$LobbyStatusInitialImplCopyWithImpl(_$LobbyStatusInitialImpl _value,
      $Res Function(_$LobbyStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LobbyStatusInitialImpl implements _LobbyStatusInitial {
  const _$LobbyStatusInitialImpl();

  @override
  String toString() {
    return 'LobbyStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LobbyStatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
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
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LobbyStatusInitial implements LobbyStatus {
  const factory _LobbyStatusInitial() = _$LobbyStatusInitialImpl;
}

/// @nodoc
abstract class _$$LobbyStatusAddedImplCopyWith<$Res> {
  factory _$$LobbyStatusAddedImplCopyWith(_$LobbyStatusAddedImpl value,
          $Res Function(_$LobbyStatusAddedImpl) then) =
      __$$LobbyStatusAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LobbyStatusAddedImplCopyWithImpl<$Res>
    extends _$LobbyStatusCopyWithImpl<$Res, _$LobbyStatusAddedImpl>
    implements _$$LobbyStatusAddedImplCopyWith<$Res> {
  __$$LobbyStatusAddedImplCopyWithImpl(_$LobbyStatusAddedImpl _value,
      $Res Function(_$LobbyStatusAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LobbyStatusAddedImpl implements _LobbyStatusAdded {
  const _$LobbyStatusAddedImpl();

  @override
  String toString() {
    return 'LobbyStatus.added()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LobbyStatusAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _LobbyStatusAdded implements LobbyStatus {
  const factory _LobbyStatusAdded() = _$LobbyStatusAddedImpl;
}

/// @nodoc
abstract class _$$LobbyStatusRemovedImplCopyWith<$Res> {
  factory _$$LobbyStatusRemovedImplCopyWith(_$LobbyStatusRemovedImpl value,
          $Res Function(_$LobbyStatusRemovedImpl) then) =
      __$$LobbyStatusRemovedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LobbyStatusRemovedImplCopyWithImpl<$Res>
    extends _$LobbyStatusCopyWithImpl<$Res, _$LobbyStatusRemovedImpl>
    implements _$$LobbyStatusRemovedImplCopyWith<$Res> {
  __$$LobbyStatusRemovedImplCopyWithImpl(_$LobbyStatusRemovedImpl _value,
      $Res Function(_$LobbyStatusRemovedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LobbyStatusRemovedImpl implements _LobbyStatusRemoved {
  const _$LobbyStatusRemovedImpl();

  @override
  String toString() {
    return 'LobbyStatus.removed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LobbyStatusRemovedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) {
    return removed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) {
    return removed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class _LobbyStatusRemoved implements LobbyStatus {
  const factory _LobbyStatusRemoved() = _$LobbyStatusRemovedImpl;
}

/// @nodoc
abstract class _$$LobbyStatusRandomImplCopyWith<$Res> {
  factory _$$LobbyStatusRandomImplCopyWith(_$LobbyStatusRandomImpl value,
          $Res Function(_$LobbyStatusRandomImpl) then) =
      __$$LobbyStatusRandomImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LobbyStatusRandomImplCopyWithImpl<$Res>
    extends _$LobbyStatusCopyWithImpl<$Res, _$LobbyStatusRandomImpl>
    implements _$$LobbyStatusRandomImplCopyWith<$Res> {
  __$$LobbyStatusRandomImplCopyWithImpl(_$LobbyStatusRandomImpl _value,
      $Res Function(_$LobbyStatusRandomImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LobbyStatusRandomImpl implements _LobbyStatusRandom {
  const _$LobbyStatusRandomImpl();

  @override
  String toString() {
    return 'LobbyStatus.random()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LobbyStatusRandomImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) {
    return random();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) {
    return random?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) {
    return random(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) {
    return random?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random(this);
    }
    return orElse();
  }
}

abstract class _LobbyStatusRandom implements LobbyStatus {
  const factory _LobbyStatusRandom() = _$LobbyStatusRandomImpl;
}

/// @nodoc
abstract class _$$LobbyStatusPromotedImplCopyWith<$Res> {
  factory _$$LobbyStatusPromotedImplCopyWith(_$LobbyStatusPromotedImpl value,
          $Res Function(_$LobbyStatusPromotedImpl) then) =
      __$$LobbyStatusPromotedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LobbyStatusPromotedImplCopyWithImpl<$Res>
    extends _$LobbyStatusCopyWithImpl<$Res, _$LobbyStatusPromotedImpl>
    implements _$$LobbyStatusPromotedImplCopyWith<$Res> {
  __$$LobbyStatusPromotedImplCopyWithImpl(_$LobbyStatusPromotedImpl _value,
      $Res Function(_$LobbyStatusPromotedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LobbyStatusPromotedImpl implements _LobbyStatusPromoted {
  const _$LobbyStatusPromotedImpl();

  @override
  String toString() {
    return 'LobbyStatus.promoted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LobbyStatusPromotedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) {
    return promoted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) {
    return promoted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
    required TResult orElse(),
  }) {
    if (promoted != null) {
      return promoted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) {
    return promoted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) {
    return promoted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) {
    if (promoted != null) {
      return promoted(this);
    }
    return orElse();
  }
}

abstract class _LobbyStatusPromoted implements LobbyStatus {
  const factory _LobbyStatusPromoted() = _$LobbyStatusPromotedImpl;
}

/// @nodoc
abstract class _$$LobbyStatusDemotedImplCopyWith<$Res> {
  factory _$$LobbyStatusDemotedImplCopyWith(_$LobbyStatusDemotedImpl value,
          $Res Function(_$LobbyStatusDemotedImpl) then) =
      __$$LobbyStatusDemotedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LobbyStatusDemotedImplCopyWithImpl<$Res>
    extends _$LobbyStatusCopyWithImpl<$Res, _$LobbyStatusDemotedImpl>
    implements _$$LobbyStatusDemotedImplCopyWith<$Res> {
  __$$LobbyStatusDemotedImplCopyWithImpl(_$LobbyStatusDemotedImpl _value,
      $Res Function(_$LobbyStatusDemotedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LobbyStatusDemotedImpl implements _LobbyStatusDemoted {
  const _$LobbyStatusDemotedImpl();

  @override
  String toString() {
    return 'LobbyStatus.demoted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LobbyStatusDemotedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() removed,
    required TResult Function() random,
    required TResult Function() promoted,
    required TResult Function() demoted,
  }) {
    return demoted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? removed,
    TResult? Function()? random,
    TResult? Function()? promoted,
    TResult? Function()? demoted,
  }) {
    return demoted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? removed,
    TResult Function()? random,
    TResult Function()? promoted,
    TResult Function()? demoted,
    required TResult orElse(),
  }) {
    if (demoted != null) {
      return demoted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LobbyStatusInitial value) initial,
    required TResult Function(_LobbyStatusAdded value) added,
    required TResult Function(_LobbyStatusRemoved value) removed,
    required TResult Function(_LobbyStatusRandom value) random,
    required TResult Function(_LobbyStatusPromoted value) promoted,
    required TResult Function(_LobbyStatusDemoted value) demoted,
  }) {
    return demoted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LobbyStatusInitial value)? initial,
    TResult? Function(_LobbyStatusAdded value)? added,
    TResult? Function(_LobbyStatusRemoved value)? removed,
    TResult? Function(_LobbyStatusRandom value)? random,
    TResult? Function(_LobbyStatusPromoted value)? promoted,
    TResult? Function(_LobbyStatusDemoted value)? demoted,
  }) {
    return demoted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LobbyStatusInitial value)? initial,
    TResult Function(_LobbyStatusAdded value)? added,
    TResult Function(_LobbyStatusRemoved value)? removed,
    TResult Function(_LobbyStatusRandom value)? random,
    TResult Function(_LobbyStatusPromoted value)? promoted,
    TResult Function(_LobbyStatusDemoted value)? demoted,
    required TResult orElse(),
  }) {
    if (demoted != null) {
      return demoted(this);
    }
    return orElse();
  }
}

abstract class _LobbyStatusDemoted implements LobbyStatus {
  const factory _LobbyStatusDemoted() = _$LobbyStatusDemotedImpl;
}
