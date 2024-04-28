// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dnd_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DndState {
  DndStatus get status => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;
  List<Player> get lobby => throw _privateConstructorUsedError;
  List<Message> get playersMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DndStateCopyWith<DndState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DndStateCopyWith<$Res> {
  factory $DndStateCopyWith(DndState value, $Res Function(DndState) then) =
      _$DndStateCopyWithImpl<$Res, DndState>;
  @useResult
  $Res call(
      {DndStatus status,
      List<Player> players,
      List<Player> lobby,
      List<Message> playersMessages});

  $DndStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DndStateCopyWithImpl<$Res, $Val extends DndState>
    implements $DndStateCopyWith<$Res> {
  _$DndStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? players = null,
    Object? lobby = null,
    Object? playersMessages = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DndStatus,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      lobby: null == lobby
          ? _value.lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      playersMessages: null == playersMessages
          ? _value.playersMessages
          : playersMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DndStatusCopyWith<$Res> get status {
    return $DndStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DndStateImplCopyWith<$Res>
    implements $DndStateCopyWith<$Res> {
  factory _$$DndStateImplCopyWith(
          _$DndStateImpl value, $Res Function(_$DndStateImpl) then) =
      __$$DndStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DndStatus status,
      List<Player> players,
      List<Player> lobby,
      List<Message> playersMessages});

  @override
  $DndStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$DndStateImplCopyWithImpl<$Res>
    extends _$DndStateCopyWithImpl<$Res, _$DndStateImpl>
    implements _$$DndStateImplCopyWith<$Res> {
  __$$DndStateImplCopyWithImpl(
      _$DndStateImpl _value, $Res Function(_$DndStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? players = null,
    Object? lobby = null,
    Object? playersMessages = null,
  }) {
    return _then(_$DndStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DndStatus,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      lobby: null == lobby
          ? _value._lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      playersMessages: null == playersMessages
          ? _value._playersMessages
          : playersMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$DndStateImpl extends _DndState {
  const _$DndStateImpl(
      {required this.status,
      final List<Player> players = const <Player>[],
      final List<Player> lobby = const <Player>[],
      final List<Message> playersMessages = const <Message>[]})
      : _players = players,
        _lobby = lobby,
        _playersMessages = playersMessages,
        super._();

  @override
  final DndStatus status;
  final List<Player> _players;
  @override
  @JsonKey()
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  final List<Player> _lobby;
  @override
  @JsonKey()
  List<Player> get lobby {
    if (_lobby is EqualUnmodifiableListView) return _lobby;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lobby);
  }

  final List<Message> _playersMessages;
  @override
  @JsonKey()
  List<Message> get playersMessages {
    if (_playersMessages is EqualUnmodifiableListView) return _playersMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersMessages);
  }

  @override
  String toString() {
    return 'DndState(status: $status, players: $players, lobby: $lobby, playersMessages: $playersMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DndStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(other._lobby, _lobby) &&
            const DeepCollectionEquality()
                .equals(other._playersMessages, _playersMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(_lobby),
      const DeepCollectionEquality().hash(_playersMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DndStateImplCopyWith<_$DndStateImpl> get copyWith =>
      __$$DndStateImplCopyWithImpl<_$DndStateImpl>(this, _$identity);
}

abstract class _DndState extends DndState {
  const factory _DndState(
      {required final DndStatus status,
      final List<Player> players,
      final List<Player> lobby,
      final List<Message> playersMessages}) = _$DndStateImpl;
  const _DndState._() : super._();

  @override
  DndStatus get status;
  @override
  List<Player> get players;
  @override
  List<Player> get lobby;
  @override
  List<Message> get playersMessages;
  @override
  @JsonKey(ignore: true)
  _$$DndStateImplCopyWith<_$DndStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DndStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DndStatusCopyWith<$Res> {
  factory $DndStatusCopyWith(DndStatus value, $Res Function(DndStatus) then) =
      _$DndStatusCopyWithImpl<$Res, DndStatus>;
}

/// @nodoc
class _$DndStatusCopyWithImpl<$Res, $Val extends DndStatus>
    implements $DndStatusCopyWith<$Res> {
  _$DndStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DndInitialImplCopyWith<$Res> {
  factory _$$DndInitialImplCopyWith(
          _$DndInitialImpl value, $Res Function(_$DndInitialImpl) then) =
      __$$DndInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DndInitialImplCopyWithImpl<$Res>
    extends _$DndStatusCopyWithImpl<$Res, _$DndInitialImpl>
    implements _$$DndInitialImplCopyWith<$Res> {
  __$$DndInitialImplCopyWithImpl(
      _$DndInitialImpl _value, $Res Function(_$DndInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DndInitialImpl implements _DndInitial {
  const _$DndInitialImpl();

  @override
  String toString() {
    return 'DndStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DndInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
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
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DndInitial implements DndStatus {
  const factory _DndInitial() = _$DndInitialImpl;
}

/// @nodoc
abstract class _$$DndChosenImplCopyWith<$Res> {
  factory _$$DndChosenImplCopyWith(
          _$DndChosenImpl value, $Res Function(_$DndChosenImpl) then) =
      __$$DndChosenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player});
}

/// @nodoc
class __$$DndChosenImplCopyWithImpl<$Res>
    extends _$DndStatusCopyWithImpl<$Res, _$DndChosenImpl>
    implements _$$DndChosenImplCopyWith<$Res> {
  __$$DndChosenImplCopyWithImpl(
      _$DndChosenImpl _value, $Res Function(_$DndChosenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$DndChosenImpl(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$DndChosenImpl implements _DndChosen {
  const _$DndChosenImpl(this.player);

  @override
  final Player player;

  @override
  String toString() {
    return 'DndStatus.chosen(player: $player)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DndChosenImpl &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DndChosenImplCopyWith<_$DndChosenImpl> get copyWith =>
      __$$DndChosenImplCopyWithImpl<_$DndChosenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) {
    return chosen(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) {
    return chosen?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (chosen != null) {
      return chosen(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) {
    return chosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) {
    return chosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) {
    if (chosen != null) {
      return chosen(this);
    }
    return orElse();
  }
}

abstract class _DndChosen implements DndStatus {
  const factory _DndChosen(final Player player) = _$DndChosenImpl;

  Player get player;
  @JsonKey(ignore: true)
  _$$DndChosenImplCopyWith<_$DndChosenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DndLobbyImplCopyWith<$Res> {
  factory _$$DndLobbyImplCopyWith(
          _$DndLobbyImpl value, $Res Function(_$DndLobbyImpl) then) =
      __$$DndLobbyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player});
}

/// @nodoc
class __$$DndLobbyImplCopyWithImpl<$Res>
    extends _$DndStatusCopyWithImpl<$Res, _$DndLobbyImpl>
    implements _$$DndLobbyImplCopyWith<$Res> {
  __$$DndLobbyImplCopyWithImpl(
      _$DndLobbyImpl _value, $Res Function(_$DndLobbyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$DndLobbyImpl(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$DndLobbyImpl implements _DndLobby {
  const _$DndLobbyImpl(this.player);

  @override
  final Player player;

  @override
  String toString() {
    return 'DndStatus.lobby(player: $player)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DndLobbyImpl &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DndLobbyImplCopyWith<_$DndLobbyImpl> get copyWith =>
      __$$DndLobbyImplCopyWithImpl<_$DndLobbyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) {
    return lobby(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) {
    return lobby?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (lobby != null) {
      return lobby(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) {
    return lobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) {
    return lobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) {
    if (lobby != null) {
      return lobby(this);
    }
    return orElse();
  }
}

abstract class _DndLobby implements DndStatus {
  const factory _DndLobby(final Player player) = _$DndLobbyImpl;

  Player get player;
  @JsonKey(ignore: true)
  _$$DndLobbyImplCopyWith<_$DndLobbyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DndStartImplCopyWith<$Res> {
  factory _$$DndStartImplCopyWith(
          _$DndStartImpl value, $Res Function(_$DndStartImpl) then) =
      __$$DndStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DndStartImplCopyWithImpl<$Res>
    extends _$DndStatusCopyWithImpl<$Res, _$DndStartImpl>
    implements _$$DndStartImplCopyWith<$Res> {
  __$$DndStartImplCopyWithImpl(
      _$DndStartImpl _value, $Res Function(_$DndStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DndStartImpl implements _DndStart {
  const _$DndStartImpl();

  @override
  String toString() {
    return 'DndStatus.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DndStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
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
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _DndStart implements DndStatus {
  const factory _DndStart() = _$DndStartImpl;
}

/// @nodoc
abstract class _$$DndListenImplCopyWith<$Res> {
  factory _$$DndListenImplCopyWith(
          _$DndListenImpl value, $Res Function(_$DndListenImpl) then) =
      __$$DndListenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DndListenImplCopyWithImpl<$Res>
    extends _$DndStatusCopyWithImpl<$Res, _$DndListenImpl>
    implements _$$DndListenImplCopyWith<$Res> {
  __$$DndListenImplCopyWithImpl(
      _$DndListenImpl _value, $Res Function(_$DndListenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DndListenImpl implements _DndListen {
  const _$DndListenImpl();

  @override
  String toString() {
    return 'DndStatus.listen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DndListenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) {
    return listen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) {
    return listen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (listen != null) {
      return listen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) {
    return listen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) {
    return listen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) {
    if (listen != null) {
      return listen(this);
    }
    return orElse();
  }
}

abstract class _DndListen implements DndStatus {
  const factory _DndListen() = _$DndListenImpl;
}

/// @nodoc
abstract class _$$DndStopImplCopyWith<$Res> {
  factory _$$DndStopImplCopyWith(
          _$DndStopImpl value, $Res Function(_$DndStopImpl) then) =
      __$$DndStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DndStopImplCopyWithImpl<$Res>
    extends _$DndStatusCopyWithImpl<$Res, _$DndStopImpl>
    implements _$$DndStopImplCopyWith<$Res> {
  __$$DndStopImplCopyWithImpl(
      _$DndStopImpl _value, $Res Function(_$DndStopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DndStopImpl implements _DndStop {
  const _$DndStopImpl();

  @override
  String toString() {
    return 'DndStatus.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DndStopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Player player) chosen,
    required TResult Function(Player player) lobby,
    required TResult Function() start,
    required TResult Function() listen,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Player player)? chosen,
    TResult? Function(Player player)? lobby,
    TResult? Function()? start,
    TResult? Function()? listen,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Player player)? chosen,
    TResult Function(Player player)? lobby,
    TResult Function()? start,
    TResult Function()? listen,
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
    required TResult Function(_DndInitial value) initial,
    required TResult Function(_DndChosen value) chosen,
    required TResult Function(_DndLobby value) lobby,
    required TResult Function(_DndStart value) start,
    required TResult Function(_DndListen value) listen,
    required TResult Function(_DndStop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DndInitial value)? initial,
    TResult? Function(_DndChosen value)? chosen,
    TResult? Function(_DndLobby value)? lobby,
    TResult? Function(_DndStart value)? start,
    TResult? Function(_DndListen value)? listen,
    TResult? Function(_DndStop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DndInitial value)? initial,
    TResult Function(_DndChosen value)? chosen,
    TResult Function(_DndLobby value)? lobby,
    TResult Function(_DndStart value)? start,
    TResult Function(_DndListen value)? listen,
    TResult Function(_DndStop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _DndStop implements DndStatus {
  const factory _DndStop() = _$DndStopImpl;
}
