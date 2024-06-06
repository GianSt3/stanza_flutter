// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_messages_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameMessagesState {
  GameMessagesStatus get status => throw _privateConstructorUsedError;
  List<AudioMessage> get messages => throw _privateConstructorUsedError;
  List<AudioMessage> get lastPlayerMessages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameMessagesStateCopyWith<GameMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMessagesStateCopyWith<$Res> {
  factory $GameMessagesStateCopyWith(
          GameMessagesState value, $Res Function(GameMessagesState) then) =
      _$GameMessagesStateCopyWithImpl<$Res, GameMessagesState>;
  @useResult
  $Res call(
      {GameMessagesStatus status,
      List<AudioMessage> messages,
      List<AudioMessage> lastPlayerMessages});

  $GameMessagesStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$GameMessagesStateCopyWithImpl<$Res, $Val extends GameMessagesState>
    implements $GameMessagesStateCopyWith<$Res> {
  _$GameMessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? lastPlayerMessages = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameMessagesStatus,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AudioMessage>,
      lastPlayerMessages: null == lastPlayerMessages
          ? _value.lastPlayerMessages
          : lastPlayerMessages // ignore: cast_nullable_to_non_nullable
              as List<AudioMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameMessagesStatusCopyWith<$Res> get status {
    return $GameMessagesStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameMessagesStateImplCopyWith<$Res>
    implements $GameMessagesStateCopyWith<$Res> {
  factory _$$GameMessagesStateImplCopyWith(_$GameMessagesStateImpl value,
          $Res Function(_$GameMessagesStateImpl) then) =
      __$$GameMessagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameMessagesStatus status,
      List<AudioMessage> messages,
      List<AudioMessage> lastPlayerMessages});

  @override
  $GameMessagesStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$GameMessagesStateImplCopyWithImpl<$Res>
    extends _$GameMessagesStateCopyWithImpl<$Res, _$GameMessagesStateImpl>
    implements _$$GameMessagesStateImplCopyWith<$Res> {
  __$$GameMessagesStateImplCopyWithImpl(_$GameMessagesStateImpl _value,
      $Res Function(_$GameMessagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? lastPlayerMessages = null,
  }) {
    return _then(_$GameMessagesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameMessagesStatus,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AudioMessage>,
      lastPlayerMessages: null == lastPlayerMessages
          ? _value._lastPlayerMessages
          : lastPlayerMessages // ignore: cast_nullable_to_non_nullable
              as List<AudioMessage>,
    ));
  }
}

/// @nodoc

class _$GameMessagesStateImpl extends _GameMessagesState {
  const _$GameMessagesStateImpl(
      {required this.status,
      final List<AudioMessage> messages = const <AudioMessage>[],
      final List<AudioMessage> lastPlayerMessages = const <AudioMessage>[]})
      : _messages = messages,
        _lastPlayerMessages = lastPlayerMessages,
        super._();

  @override
  final GameMessagesStatus status;
  final List<AudioMessage> _messages;
  @override
  @JsonKey()
  List<AudioMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<AudioMessage> _lastPlayerMessages;
  @override
  @JsonKey()
  List<AudioMessage> get lastPlayerMessages {
    if (_lastPlayerMessages is EqualUnmodifiableListView)
      return _lastPlayerMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastPlayerMessages);
  }

  @override
  String toString() {
    return 'GameMessagesState(status: $status, messages: $messages, lastPlayerMessages: $lastPlayerMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMessagesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._lastPlayerMessages, _lastPlayerMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_lastPlayerMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMessagesStateImplCopyWith<_$GameMessagesStateImpl> get copyWith =>
      __$$GameMessagesStateImplCopyWithImpl<_$GameMessagesStateImpl>(
          this, _$identity);
}

abstract class _GameMessagesState extends GameMessagesState {
  const factory _GameMessagesState(
      {required final GameMessagesStatus status,
      final List<AudioMessage> messages,
      final List<AudioMessage> lastPlayerMessages}) = _$GameMessagesStateImpl;
  const _GameMessagesState._() : super._();

  @override
  GameMessagesStatus get status;
  @override
  List<AudioMessage> get messages;
  @override
  List<AudioMessage> get lastPlayerMessages;
  @override
  @JsonKey(ignore: true)
  _$$GameMessagesStateImplCopyWith<_$GameMessagesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameMessagesStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() loaded,
    required TResult Function(dynamic error, String message) error,
    required TResult Function(AudioMessage message) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? loaded,
    TResult? Function(dynamic error, String message)? error,
    TResult? Function(AudioMessage message)? pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? loaded,
    TResult Function(dynamic error, String message)? error,
    TResult Function(AudioMessage message)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusAdded value) added,
    required TResult Function(_StatusLoaded value) loaded,
    required TResult Function(_StatusError value) error,
    required TResult Function(_StatusPop value) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusAdded value)? added,
    TResult? Function(_StatusLoaded value)? loaded,
    TResult? Function(_StatusError value)? error,
    TResult? Function(_StatusPop value)? pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusAdded value)? added,
    TResult Function(_StatusLoaded value)? loaded,
    TResult Function(_StatusError value)? error,
    TResult Function(_StatusPop value)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMessagesStatusCopyWith<$Res> {
  factory $GameMessagesStatusCopyWith(
          GameMessagesStatus value, $Res Function(GameMessagesStatus) then) =
      _$GameMessagesStatusCopyWithImpl<$Res, GameMessagesStatus>;
}

/// @nodoc
class _$GameMessagesStatusCopyWithImpl<$Res, $Val extends GameMessagesStatus>
    implements $GameMessagesStatusCopyWith<$Res> {
  _$GameMessagesStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusInitialImplCopyWith<$Res> {
  factory _$$StatusInitialImplCopyWith(
          _$StatusInitialImpl value, $Res Function(_$StatusInitialImpl) then) =
      __$$StatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusInitialImplCopyWithImpl<$Res>
    extends _$GameMessagesStatusCopyWithImpl<$Res, _$StatusInitialImpl>
    implements _$$StatusInitialImplCopyWith<$Res> {
  __$$StatusInitialImplCopyWithImpl(
      _$StatusInitialImpl _value, $Res Function(_$StatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusInitialImpl implements _StatusInitial {
  const _$StatusInitialImpl();

  @override
  String toString() {
    return 'GameMessagesStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() loaded,
    required TResult Function(dynamic error, String message) error,
    required TResult Function(AudioMessage message) pop,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? loaded,
    TResult? Function(dynamic error, String message)? error,
    TResult? Function(AudioMessage message)? pop,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? loaded,
    TResult Function(dynamic error, String message)? error,
    TResult Function(AudioMessage message)? pop,
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
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusAdded value) added,
    required TResult Function(_StatusLoaded value) loaded,
    required TResult Function(_StatusError value) error,
    required TResult Function(_StatusPop value) pop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusAdded value)? added,
    TResult? Function(_StatusLoaded value)? loaded,
    TResult? Function(_StatusError value)? error,
    TResult? Function(_StatusPop value)? pop,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusAdded value)? added,
    TResult Function(_StatusLoaded value)? loaded,
    TResult Function(_StatusError value)? error,
    TResult Function(_StatusPop value)? pop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StatusInitial implements GameMessagesStatus {
  const factory _StatusInitial() = _$StatusInitialImpl;
}

/// @nodoc
abstract class _$$StatusAddedImplCopyWith<$Res> {
  factory _$$StatusAddedImplCopyWith(
          _$StatusAddedImpl value, $Res Function(_$StatusAddedImpl) then) =
      __$$StatusAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusAddedImplCopyWithImpl<$Res>
    extends _$GameMessagesStatusCopyWithImpl<$Res, _$StatusAddedImpl>
    implements _$$StatusAddedImplCopyWith<$Res> {
  __$$StatusAddedImplCopyWithImpl(
      _$StatusAddedImpl _value, $Res Function(_$StatusAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusAddedImpl implements _StatusAdded {
  const _$StatusAddedImpl();

  @override
  String toString() {
    return 'GameMessagesStatus.added()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() loaded,
    required TResult Function(dynamic error, String message) error,
    required TResult Function(AudioMessage message) pop,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? loaded,
    TResult? Function(dynamic error, String message)? error,
    TResult? Function(AudioMessage message)? pop,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? loaded,
    TResult Function(dynamic error, String message)? error,
    TResult Function(AudioMessage message)? pop,
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
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusAdded value) added,
    required TResult Function(_StatusLoaded value) loaded,
    required TResult Function(_StatusError value) error,
    required TResult Function(_StatusPop value) pop,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusAdded value)? added,
    TResult? Function(_StatusLoaded value)? loaded,
    TResult? Function(_StatusError value)? error,
    TResult? Function(_StatusPop value)? pop,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusAdded value)? added,
    TResult Function(_StatusLoaded value)? loaded,
    TResult Function(_StatusError value)? error,
    TResult Function(_StatusPop value)? pop,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _StatusAdded implements GameMessagesStatus {
  const factory _StatusAdded() = _$StatusAddedImpl;
}

/// @nodoc
abstract class _$$StatusLoadedImplCopyWith<$Res> {
  factory _$$StatusLoadedImplCopyWith(
          _$StatusLoadedImpl value, $Res Function(_$StatusLoadedImpl) then) =
      __$$StatusLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadedImplCopyWithImpl<$Res>
    extends _$GameMessagesStatusCopyWithImpl<$Res, _$StatusLoadedImpl>
    implements _$$StatusLoadedImplCopyWith<$Res> {
  __$$StatusLoadedImplCopyWithImpl(
      _$StatusLoadedImpl _value, $Res Function(_$StatusLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusLoadedImpl implements _StatusLoaded {
  const _$StatusLoadedImpl();

  @override
  String toString() {
    return 'GameMessagesStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() loaded,
    required TResult Function(dynamic error, String message) error,
    required TResult Function(AudioMessage message) pop,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? loaded,
    TResult? Function(dynamic error, String message)? error,
    TResult? Function(AudioMessage message)? pop,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? loaded,
    TResult Function(dynamic error, String message)? error,
    TResult Function(AudioMessage message)? pop,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusAdded value) added,
    required TResult Function(_StatusLoaded value) loaded,
    required TResult Function(_StatusError value) error,
    required TResult Function(_StatusPop value) pop,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusAdded value)? added,
    TResult? Function(_StatusLoaded value)? loaded,
    TResult? Function(_StatusError value)? error,
    TResult? Function(_StatusPop value)? pop,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusAdded value)? added,
    TResult Function(_StatusLoaded value)? loaded,
    TResult Function(_StatusError value)? error,
    TResult Function(_StatusPop value)? pop,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StatusLoaded implements GameMessagesStatus {
  const factory _StatusLoaded() = _$StatusLoadedImpl;
}

/// @nodoc
abstract class _$$StatusErrorImplCopyWith<$Res> {
  factory _$$StatusErrorImplCopyWith(
          _$StatusErrorImpl value, $Res Function(_$StatusErrorImpl) then) =
      __$$StatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error, String message});
}

/// @nodoc
class __$$StatusErrorImplCopyWithImpl<$Res>
    extends _$GameMessagesStatusCopyWithImpl<$Res, _$StatusErrorImpl>
    implements _$$StatusErrorImplCopyWith<$Res> {
  __$$StatusErrorImplCopyWithImpl(
      _$StatusErrorImpl _value, $Res Function(_$StatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = null,
  }) {
    return _then(_$StatusErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusErrorImpl implements _StatusError {
  const _$StatusErrorImpl(this.error, this.message);

  @override
  final dynamic error;
  @override
  final String message;

  @override
  String toString() {
    return 'GameMessagesStatus.error(error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusErrorImplCopyWith<_$StatusErrorImpl> get copyWith =>
      __$$StatusErrorImplCopyWithImpl<_$StatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() loaded,
    required TResult Function(dynamic error, String message) error,
    required TResult Function(AudioMessage message) pop,
  }) {
    return error(this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? loaded,
    TResult? Function(dynamic error, String message)? error,
    TResult? Function(AudioMessage message)? pop,
  }) {
    return error?.call(this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? loaded,
    TResult Function(dynamic error, String message)? error,
    TResult Function(AudioMessage message)? pop,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusAdded value) added,
    required TResult Function(_StatusLoaded value) loaded,
    required TResult Function(_StatusError value) error,
    required TResult Function(_StatusPop value) pop,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusAdded value)? added,
    TResult? Function(_StatusLoaded value)? loaded,
    TResult? Function(_StatusError value)? error,
    TResult? Function(_StatusPop value)? pop,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusAdded value)? added,
    TResult Function(_StatusLoaded value)? loaded,
    TResult Function(_StatusError value)? error,
    TResult Function(_StatusPop value)? pop,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StatusError implements GameMessagesStatus {
  const factory _StatusError(final dynamic error, final String message) =
      _$StatusErrorImpl;

  dynamic get error;
  String get message;
  @JsonKey(ignore: true)
  _$$StatusErrorImplCopyWith<_$StatusErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusPopImplCopyWith<$Res> {
  factory _$$StatusPopImplCopyWith(
          _$StatusPopImpl value, $Res Function(_$StatusPopImpl) then) =
      __$$StatusPopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AudioMessage message});
}

/// @nodoc
class __$$StatusPopImplCopyWithImpl<$Res>
    extends _$GameMessagesStatusCopyWithImpl<$Res, _$StatusPopImpl>
    implements _$$StatusPopImplCopyWith<$Res> {
  __$$StatusPopImplCopyWithImpl(
      _$StatusPopImpl _value, $Res Function(_$StatusPopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StatusPopImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AudioMessage,
    ));
  }
}

/// @nodoc

class _$StatusPopImpl implements _StatusPop {
  const _$StatusPopImpl(this.message);

  @override
  final AudioMessage message;

  @override
  String toString() {
    return 'GameMessagesStatus.pop(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusPopImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusPopImplCopyWith<_$StatusPopImpl> get copyWith =>
      __$$StatusPopImplCopyWithImpl<_$StatusPopImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() loaded,
    required TResult Function(dynamic error, String message) error,
    required TResult Function(AudioMessage message) pop,
  }) {
    return pop(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? added,
    TResult? Function()? loaded,
    TResult? Function(dynamic error, String message)? error,
    TResult? Function(AudioMessage message)? pop,
  }) {
    return pop?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? loaded,
    TResult Function(dynamic error, String message)? error,
    TResult Function(AudioMessage message)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusAdded value) added,
    required TResult Function(_StatusLoaded value) loaded,
    required TResult Function(_StatusError value) error,
    required TResult Function(_StatusPop value) pop,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusAdded value)? added,
    TResult? Function(_StatusLoaded value)? loaded,
    TResult? Function(_StatusError value)? error,
    TResult? Function(_StatusPop value)? pop,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusAdded value)? added,
    TResult Function(_StatusLoaded value)? loaded,
    TResult Function(_StatusError value)? error,
    TResult Function(_StatusPop value)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class _StatusPop implements GameMessagesStatus {
  const factory _StatusPop(final AudioMessage message) = _$StatusPopImpl;

  AudioMessage get message;
  @JsonKey(ignore: true)
  _$$StatusPopImplCopyWith<_$StatusPopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
