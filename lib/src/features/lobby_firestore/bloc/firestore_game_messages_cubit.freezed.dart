// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_game_messages_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreGameMessagesState {
  Timestamp get lastTimestamp => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;
  bool get playable => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)
        initial,
    required TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)
        reading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        initial,
    TResult? Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        reading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        initial,
    TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        reading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreGameMessagesStateCopyWith<FirestoreGameMessagesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreGameMessagesStateCopyWith<$Res> {
  factory $FirestoreGameMessagesStateCopyWith(FirestoreGameMessagesState value,
          $Res Function(FirestoreGameMessagesState) then) =
      _$FirestoreGameMessagesStateCopyWithImpl<$Res,
          FirestoreGameMessagesState>;
  @useResult
  $Res call({Timestamp lastTimestamp, List<Player> players, bool playable});
}

/// @nodoc
class _$FirestoreGameMessagesStateCopyWithImpl<$Res,
        $Val extends FirestoreGameMessagesState>
    implements $FirestoreGameMessagesStateCopyWith<$Res> {
  _$FirestoreGameMessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastTimestamp = null,
    Object? players = null,
    Object? playable = null,
  }) {
    return _then(_value.copyWith(
      lastTimestamp: null == lastTimestamp
          ? _value.lastTimestamp
          : lastTimestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      playable: null == playable
          ? _value.playable
          : playable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FirestoreGameMessagesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timestamp lastTimestamp, List<Player> players, bool playable});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FirestoreGameMessagesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastTimestamp = null,
    Object? players = null,
    Object? playable = null,
  }) {
    return _then(_$InitialImpl(
      null == lastTimestamp
          ? _value.lastTimestamp
          : lastTimestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      null == playable
          ? _value.playable
          : playable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      this.lastTimestamp, final List<Player> players, this.playable)
      : _players = players;

  @override
  final Timestamp lastTimestamp;
  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final bool playable;

  @override
  String toString() {
    return 'FirestoreGameMessagesState.initial(lastTimestamp: $lastTimestamp, players: $players, playable: $playable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.lastTimestamp, lastTimestamp) ||
                other.lastTimestamp == lastTimestamp) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.playable, playable) ||
                other.playable == playable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastTimestamp,
      const DeepCollectionEquality().hash(_players), playable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)
        initial,
    required TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)
        reading,
  }) {
    return initial(lastTimestamp, players, playable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        initial,
    TResult? Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        reading,
  }) {
    return initial?.call(lastTimestamp, players, playable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        initial,
    TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        reading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(lastTimestamp, players, playable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FirestoreGameMessagesState {
  const factory _Initial(final Timestamp lastTimestamp,
      final List<Player> players, final bool playable) = _$InitialImpl;

  @override
  Timestamp get lastTimestamp;
  @override
  List<Player> get players;
  @override
  bool get playable;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadingImplCopyWith<$Res>
    implements $FirestoreGameMessagesStateCopyWith<$Res> {
  factory _$$ReadingImplCopyWith(
          _$ReadingImpl value, $Res Function(_$ReadingImpl) then) =
      __$$ReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timestamp lastTimestamp, List<Player> players, bool playable});
}

/// @nodoc
class __$$ReadingImplCopyWithImpl<$Res>
    extends _$FirestoreGameMessagesStateCopyWithImpl<$Res, _$ReadingImpl>
    implements _$$ReadingImplCopyWith<$Res> {
  __$$ReadingImplCopyWithImpl(
      _$ReadingImpl _value, $Res Function(_$ReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastTimestamp = null,
    Object? players = null,
    Object? playable = null,
  }) {
    return _then(_$ReadingImpl(
      null == lastTimestamp
          ? _value.lastTimestamp
          : lastTimestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      null == playable
          ? _value.playable
          : playable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReadingImpl implements _Reading {
  const _$ReadingImpl(
      this.lastTimestamp, final List<Player> players, this.playable)
      : _players = players;

  @override
  final Timestamp lastTimestamp;
  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final bool playable;

  @override
  String toString() {
    return 'FirestoreGameMessagesState.reading(lastTimestamp: $lastTimestamp, players: $players, playable: $playable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingImpl &&
            (identical(other.lastTimestamp, lastTimestamp) ||
                other.lastTimestamp == lastTimestamp) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.playable, playable) ||
                other.playable == playable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastTimestamp,
      const DeepCollectionEquality().hash(_players), playable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingImplCopyWith<_$ReadingImpl> get copyWith =>
      __$$ReadingImplCopyWithImpl<_$ReadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)
        initial,
    required TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)
        reading,
  }) {
    return reading(lastTimestamp, players, playable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        initial,
    TResult? Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        reading,
  }) {
    return reading?.call(lastTimestamp, players, playable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        initial,
    TResult Function(
            Timestamp lastTimestamp, List<Player> players, bool playable)?
        reading,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(lastTimestamp, players, playable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
  }) {
    return reading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
  }) {
    return reading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(this);
    }
    return orElse();
  }
}

abstract class _Reading implements FirestoreGameMessagesState {
  const factory _Reading(final Timestamp lastTimestamp,
      final List<Player> players, final bool playable) = _$ReadingImpl;

  @override
  Timestamp get lastTimestamp;
  @override
  List<Player> get players;
  @override
  bool get playable;
  @override
  @JsonKey(ignore: true)
  _$$ReadingImplCopyWith<_$ReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
