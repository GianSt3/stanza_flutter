// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameState {
  GameStatus get status => throw _privateConstructorUsedError;
  bool get mute => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;
  List<AudioMessage> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {GameStatus status,
      bool mute,
      List<Player> players,
      List<AudioMessage> messages});

  $GameStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mute = null,
    Object? players = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      mute: null == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as bool,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AudioMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameStatusCopyWith<$Res> get status {
    return $GameStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameStatus status,
      bool mute,
      List<Player> players,
      List<AudioMessage> messages});

  @override
  $GameStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mute = null,
    Object? players = null,
    Object? messages = null,
  }) {
    return _then(_$GameStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      mute: null == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as bool,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AudioMessage>,
    ));
  }
}

/// @nodoc

class _$GameStateImpl extends _GameState {
  const _$GameStateImpl(
      {required this.status,
      this.mute = false,
      final List<Player> players = const <Player>[],
      final List<AudioMessage> messages = const <AudioMessage>[]})
      : _players = players,
        _messages = messages,
        super._();

  @override
  final GameStatus status;
  @override
  @JsonKey()
  final bool mute;
  final List<Player> _players;
  @override
  @JsonKey()
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  final List<AudioMessage> _messages;
  @override
  @JsonKey()
  List<AudioMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'GameState(status: $status, mute: $mute, players: $players, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      mute,
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState extends GameState {
  const factory _GameState(
      {required final GameStatus status,
      final bool mute,
      final List<Player> players,
      final List<AudioMessage> messages}) = _$GameStateImpl;
  const _GameState._() : super._();

  @override
  GameStatus get status;
  @override
  bool get mute;
  @override
  List<Player> get players;
  @override
  List<AudioMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function() mute,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function()? mute,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function()? mute,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameStatusInitial value) initial,
    required TResult Function(_GameStatusStart value) start,
    required TResult Function(_GameStatusMute value) mute,
    required TResult Function(_GameStatusStop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameStatusInitial value)? initial,
    TResult? Function(_GameStatusStart value)? start,
    TResult? Function(_GameStatusMute value)? mute,
    TResult? Function(_GameStatusStop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameStatusInitial value)? initial,
    TResult Function(_GameStatusStart value)? start,
    TResult Function(_GameStatusMute value)? mute,
    TResult Function(_GameStatusStop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStatusCopyWith<$Res> {
  factory $GameStatusCopyWith(
          GameStatus value, $Res Function(GameStatus) then) =
      _$GameStatusCopyWithImpl<$Res, GameStatus>;
}

/// @nodoc
class _$GameStatusCopyWithImpl<$Res, $Val extends GameStatus>
    implements $GameStatusCopyWith<$Res> {
  _$GameStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameStatusInitialImplCopyWith<$Res> {
  factory _$$GameStatusInitialImplCopyWith(_$GameStatusInitialImpl value,
          $Res Function(_$GameStatusInitialImpl) then) =
      __$$GameStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStatusInitialImplCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res, _$GameStatusInitialImpl>
    implements _$$GameStatusInitialImplCopyWith<$Res> {
  __$$GameStatusInitialImplCopyWithImpl(_$GameStatusInitialImpl _value,
      $Res Function(_$GameStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStatusInitialImpl implements _GameStatusInitial {
  const _$GameStatusInitialImpl();

  @override
  String toString() {
    return 'GameStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function() mute,
    required TResult Function() stop,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function()? mute,
    TResult? Function()? stop,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function()? mute,
    TResult Function()? stop,
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
    required TResult Function(_GameStatusInitial value) initial,
    required TResult Function(_GameStatusStart value) start,
    required TResult Function(_GameStatusMute value) mute,
    required TResult Function(_GameStatusStop value) stop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameStatusInitial value)? initial,
    TResult? Function(_GameStatusStart value)? start,
    TResult? Function(_GameStatusMute value)? mute,
    TResult? Function(_GameStatusStop value)? stop,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameStatusInitial value)? initial,
    TResult Function(_GameStatusStart value)? start,
    TResult Function(_GameStatusMute value)? mute,
    TResult Function(_GameStatusStop value)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GameStatusInitial implements GameStatus {
  const factory _GameStatusInitial() = _$GameStatusInitialImpl;
}

/// @nodoc
abstract class _$$GameStatusStartImplCopyWith<$Res> {
  factory _$$GameStatusStartImplCopyWith(_$GameStatusStartImpl value,
          $Res Function(_$GameStatusStartImpl) then) =
      __$$GameStatusStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStatusStartImplCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res, _$GameStatusStartImpl>
    implements _$$GameStatusStartImplCopyWith<$Res> {
  __$$GameStatusStartImplCopyWithImpl(
      _$GameStatusStartImpl _value, $Res Function(_$GameStatusStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStatusStartImpl implements _GameStatusStart {
  const _$GameStatusStartImpl();

  @override
  String toString() {
    return 'GameStatus.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStatusStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function() mute,
    required TResult Function() stop,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function()? mute,
    TResult? Function()? stop,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function()? mute,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameStatusInitial value) initial,
    required TResult Function(_GameStatusStart value) start,
    required TResult Function(_GameStatusMute value) mute,
    required TResult Function(_GameStatusStop value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameStatusInitial value)? initial,
    TResult? Function(_GameStatusStart value)? start,
    TResult? Function(_GameStatusMute value)? mute,
    TResult? Function(_GameStatusStop value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameStatusInitial value)? initial,
    TResult Function(_GameStatusStart value)? start,
    TResult Function(_GameStatusMute value)? mute,
    TResult Function(_GameStatusStop value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _GameStatusStart implements GameStatus {
  const factory _GameStatusStart() = _$GameStatusStartImpl;
}

/// @nodoc
abstract class _$$GameStatusMuteImplCopyWith<$Res> {
  factory _$$GameStatusMuteImplCopyWith(_$GameStatusMuteImpl value,
          $Res Function(_$GameStatusMuteImpl) then) =
      __$$GameStatusMuteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStatusMuteImplCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res, _$GameStatusMuteImpl>
    implements _$$GameStatusMuteImplCopyWith<$Res> {
  __$$GameStatusMuteImplCopyWithImpl(
      _$GameStatusMuteImpl _value, $Res Function(_$GameStatusMuteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStatusMuteImpl implements _GameStatusMute {
  const _$GameStatusMuteImpl();

  @override
  String toString() {
    return 'GameStatus.mute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStatusMuteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function() mute,
    required TResult Function() stop,
  }) {
    return mute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function()? mute,
    TResult? Function()? stop,
  }) {
    return mute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function()? mute,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameStatusInitial value) initial,
    required TResult Function(_GameStatusStart value) start,
    required TResult Function(_GameStatusMute value) mute,
    required TResult Function(_GameStatusStop value) stop,
  }) {
    return mute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameStatusInitial value)? initial,
    TResult? Function(_GameStatusStart value)? start,
    TResult? Function(_GameStatusMute value)? mute,
    TResult? Function(_GameStatusStop value)? stop,
  }) {
    return mute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameStatusInitial value)? initial,
    TResult Function(_GameStatusStart value)? start,
    TResult Function(_GameStatusMute value)? mute,
    TResult Function(_GameStatusStop value)? stop,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute(this);
    }
    return orElse();
  }
}

abstract class _GameStatusMute implements GameStatus {
  const factory _GameStatusMute() = _$GameStatusMuteImpl;
}

/// @nodoc
abstract class _$$GameStatusStopImplCopyWith<$Res> {
  factory _$$GameStatusStopImplCopyWith(_$GameStatusStopImpl value,
          $Res Function(_$GameStatusStopImpl) then) =
      __$$GameStatusStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStatusStopImplCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res, _$GameStatusStopImpl>
    implements _$$GameStatusStopImplCopyWith<$Res> {
  __$$GameStatusStopImplCopyWithImpl(
      _$GameStatusStopImpl _value, $Res Function(_$GameStatusStopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStatusStopImpl implements _GameStatusStop {
  const _$GameStatusStopImpl();

  @override
  String toString() {
    return 'GameStatus.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStatusStopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function() mute,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function()? mute,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function()? mute,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameStatusInitial value) initial,
    required TResult Function(_GameStatusStart value) start,
    required TResult Function(_GameStatusMute value) mute,
    required TResult Function(_GameStatusStop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameStatusInitial value)? initial,
    TResult? Function(_GameStatusStart value)? start,
    TResult? Function(_GameStatusMute value)? mute,
    TResult? Function(_GameStatusStop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameStatusInitial value)? initial,
    TResult Function(_GameStatusStart value)? start,
    TResult Function(_GameStatusMute value)? mute,
    TResult Function(_GameStatusStop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _GameStatusStop implements GameStatus {
  const factory _GameStatusStop() = _$GameStatusStopImpl;
}
