// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queued_messages_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueuedMessagesState {
  QueuedMessagesStatus get status => throw _privateConstructorUsedError;
  Map<Player, String> get lastPlayerMessages =>
      throw _privateConstructorUsedError;
  List<QueuedAudioMessage> get audioMessages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueuedMessagesStateCopyWith<QueuedMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuedMessagesStateCopyWith<$Res> {
  factory $QueuedMessagesStateCopyWith(
          QueuedMessagesState value, $Res Function(QueuedMessagesState) then) =
      _$QueuedMessagesStateCopyWithImpl<$Res, QueuedMessagesState>;
  @useResult
  $Res call(
      {QueuedMessagesStatus status,
      Map<Player, String> lastPlayerMessages,
      List<QueuedAudioMessage> audioMessages});

  $QueuedMessagesStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$QueuedMessagesStateCopyWithImpl<$Res, $Val extends QueuedMessagesState>
    implements $QueuedMessagesStateCopyWith<$Res> {
  _$QueuedMessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastPlayerMessages = null,
    Object? audioMessages = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueuedMessagesStatus,
      lastPlayerMessages: null == lastPlayerMessages
          ? _value.lastPlayerMessages
          : lastPlayerMessages // ignore: cast_nullable_to_non_nullable
              as Map<Player, String>,
      audioMessages: null == audioMessages
          ? _value.audioMessages
          : audioMessages // ignore: cast_nullable_to_non_nullable
              as List<QueuedAudioMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QueuedMessagesStatusCopyWith<$Res> get status {
    return $QueuedMessagesStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueuedMessageStateImplCopyWith<$Res>
    implements $QueuedMessagesStateCopyWith<$Res> {
  factory _$$QueuedMessageStateImplCopyWith(_$QueuedMessageStateImpl value,
          $Res Function(_$QueuedMessageStateImpl) then) =
      __$$QueuedMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueuedMessagesStatus status,
      Map<Player, String> lastPlayerMessages,
      List<QueuedAudioMessage> audioMessages});

  @override
  $QueuedMessagesStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$QueuedMessageStateImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStateCopyWithImpl<$Res, _$QueuedMessageStateImpl>
    implements _$$QueuedMessageStateImplCopyWith<$Res> {
  __$$QueuedMessageStateImplCopyWithImpl(_$QueuedMessageStateImpl _value,
      $Res Function(_$QueuedMessageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastPlayerMessages = null,
    Object? audioMessages = null,
  }) {
    return _then(_$QueuedMessageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QueuedMessagesStatus,
      lastPlayerMessages: null == lastPlayerMessages
          ? _value._lastPlayerMessages
          : lastPlayerMessages // ignore: cast_nullable_to_non_nullable
              as Map<Player, String>,
      audioMessages: null == audioMessages
          ? _value._audioMessages
          : audioMessages // ignore: cast_nullable_to_non_nullable
              as List<QueuedAudioMessage>,
    ));
  }
}

/// @nodoc

class _$QueuedMessageStateImpl extends _QueuedMessageState {
  const _$QueuedMessageStateImpl(
      {required this.status,
      final Map<Player, String> lastPlayerMessages = const <Player, String>{},
      final List<QueuedAudioMessage> audioMessages =
          const <QueuedAudioMessage>[]})
      : _lastPlayerMessages = lastPlayerMessages,
        _audioMessages = audioMessages,
        super._();

  @override
  final QueuedMessagesStatus status;
  final Map<Player, String> _lastPlayerMessages;
  @override
  @JsonKey()
  Map<Player, String> get lastPlayerMessages {
    if (_lastPlayerMessages is EqualUnmodifiableMapView)
      return _lastPlayerMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lastPlayerMessages);
  }

  final List<QueuedAudioMessage> _audioMessages;
  @override
  @JsonKey()
  List<QueuedAudioMessage> get audioMessages {
    if (_audioMessages is EqualUnmodifiableListView) return _audioMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioMessages);
  }

  @override
  String toString() {
    return 'QueuedMessagesState(status: $status, lastPlayerMessages: $lastPlayerMessages, audioMessages: $audioMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueuedMessageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._lastPlayerMessages, _lastPlayerMessages) &&
            const DeepCollectionEquality()
                .equals(other._audioMessages, _audioMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_lastPlayerMessages),
      const DeepCollectionEquality().hash(_audioMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueuedMessageStateImplCopyWith<_$QueuedMessageStateImpl> get copyWith =>
      __$$QueuedMessageStateImplCopyWithImpl<_$QueuedMessageStateImpl>(
          this, _$identity);
}

abstract class _QueuedMessageState extends QueuedMessagesState {
  const factory _QueuedMessageState(
      {required final QueuedMessagesStatus status,
      final Map<Player, String> lastPlayerMessages,
      final List<QueuedAudioMessage> audioMessages}) = _$QueuedMessageStateImpl;
  const _QueuedMessageState._() : super._();

  @override
  QueuedMessagesStatus get status;
  @override
  Map<Player, String> get lastPlayerMessages;
  @override
  List<QueuedAudioMessage> get audioMessages;
  @override
  @JsonKey(ignore: true)
  _$$QueuedMessageStateImplCopyWith<_$QueuedMessageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QueuedMessagesStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuedMessagesStatusCopyWith<$Res> {
  factory $QueuedMessagesStatusCopyWith(QueuedMessagesStatus value,
          $Res Function(QueuedMessagesStatus) then) =
      _$QueuedMessagesStatusCopyWithImpl<$Res, QueuedMessagesStatus>;
}

/// @nodoc
class _$QueuedMessagesStatusCopyWithImpl<$Res,
        $Val extends QueuedMessagesStatus>
    implements $QueuedMessagesStatusCopyWith<$Res> {
  _$QueuedMessagesStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStatusImplCopyWith<$Res> {
  factory _$$InitialStatusImplCopyWith(
          _$InitialStatusImpl value, $Res Function(_$InitialStatusImpl) then) =
      __$$InitialStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStatusImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStatusCopyWithImpl<$Res, _$InitialStatusImpl>
    implements _$$InitialStatusImplCopyWith<$Res> {
  __$$InitialStatusImplCopyWithImpl(
      _$InitialStatusImpl _value, $Res Function(_$InitialStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStatusImpl implements _InitialStatus {
  const _$InitialStatusImpl();

  @override
  String toString() {
    return 'QueuedMessagesStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
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
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialStatus implements QueuedMessagesStatus {
  const factory _InitialStatus() = _$InitialStatusImpl;
}

/// @nodoc
abstract class _$$QueuedStatusImplCopyWith<$Res> {
  factory _$$QueuedStatusImplCopyWith(
          _$QueuedStatusImpl value, $Res Function(_$QueuedStatusImpl) then) =
      __$$QueuedStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QueuedStatusImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStatusCopyWithImpl<$Res, _$QueuedStatusImpl>
    implements _$$QueuedStatusImplCopyWith<$Res> {
  __$$QueuedStatusImplCopyWithImpl(
      _$QueuedStatusImpl _value, $Res Function(_$QueuedStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QueuedStatusImpl implements _QueuedStatus {
  const _$QueuedStatusImpl();

  @override
  String toString() {
    return 'QueuedMessagesStatus.queued()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QueuedStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) {
    return queued();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) {
    return queued?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) {
    return queued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) {
    return queued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued(this);
    }
    return orElse();
  }
}

abstract class _QueuedStatus implements QueuedMessagesStatus {
  const factory _QueuedStatus() = _$QueuedStatusImpl;
}

/// @nodoc
abstract class _$$QueuedPlayedImplCopyWith<$Res> {
  factory _$$QueuedPlayedImplCopyWith(
          _$QueuedPlayedImpl value, $Res Function(_$QueuedPlayedImpl) then) =
      __$$QueuedPlayedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QueuedPlayedImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStatusCopyWithImpl<$Res, _$QueuedPlayedImpl>
    implements _$$QueuedPlayedImplCopyWith<$Res> {
  __$$QueuedPlayedImplCopyWithImpl(
      _$QueuedPlayedImpl _value, $Res Function(_$QueuedPlayedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QueuedPlayedImpl implements _QueuedPlayed {
  const _$QueuedPlayedImpl();

  @override
  String toString() {
    return 'QueuedMessagesStatus.played()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QueuedPlayedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) {
    return played();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) {
    return played?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (played != null) {
      return played();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) {
    return played(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) {
    return played?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) {
    if (played != null) {
      return played(this);
    }
    return orElse();
  }
}

abstract class _QueuedPlayed implements QueuedMessagesStatus {
  const factory _QueuedPlayed() = _$QueuedPlayedImpl;
}

/// @nodoc
abstract class _$$LoadedStatusImplCopyWith<$Res> {
  factory _$$LoadedStatusImplCopyWith(
          _$LoadedStatusImpl value, $Res Function(_$LoadedStatusImpl) then) =
      __$$LoadedStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedStatusImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStatusCopyWithImpl<$Res, _$LoadedStatusImpl>
    implements _$$LoadedStatusImplCopyWith<$Res> {
  __$$LoadedStatusImplCopyWithImpl(
      _$LoadedStatusImpl _value, $Res Function(_$LoadedStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedStatusImpl implements _LoadedStatus {
  const _$LoadedStatusImpl();

  @override
  String toString() {
    return 'QueuedMessagesStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
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
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedStatus implements QueuedMessagesStatus {
  const factory _LoadedStatus() = _$LoadedStatusImpl;
}

/// @nodoc
abstract class _$$PlayStatusImplCopyWith<$Res> {
  factory _$$PlayStatusImplCopyWith(
          _$PlayStatusImpl value, $Res Function(_$PlayStatusImpl) then) =
      __$$PlayStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QueuedAudioMessage audioMessage});
}

/// @nodoc
class __$$PlayStatusImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStatusCopyWithImpl<$Res, _$PlayStatusImpl>
    implements _$$PlayStatusImplCopyWith<$Res> {
  __$$PlayStatusImplCopyWithImpl(
      _$PlayStatusImpl _value, $Res Function(_$PlayStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioMessage = null,
  }) {
    return _then(_$PlayStatusImpl(
      null == audioMessage
          ? _value.audioMessage
          : audioMessage // ignore: cast_nullable_to_non_nullable
              as QueuedAudioMessage,
    ));
  }
}

/// @nodoc

class _$PlayStatusImpl implements _PlayStatus {
  const _$PlayStatusImpl(this.audioMessage);

  @override
  final QueuedAudioMessage audioMessage;

  @override
  String toString() {
    return 'QueuedMessagesStatus.play(audioMessage: $audioMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayStatusImpl &&
            (identical(other.audioMessage, audioMessage) ||
                other.audioMessage == audioMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayStatusImplCopyWith<_$PlayStatusImpl> get copyWith =>
      __$$PlayStatusImplCopyWithImpl<_$PlayStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) {
    return play(audioMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) {
    return play?.call(audioMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(audioMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _PlayStatus implements QueuedMessagesStatus {
  const factory _PlayStatus(final QueuedAudioMessage audioMessage) =
      _$PlayStatusImpl;

  QueuedAudioMessage get audioMessage;
  @JsonKey(ignore: true)
  _$$PlayStatusImplCopyWith<_$PlayStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStatusImplCopyWith<$Res> {
  factory _$$LoadingStatusImplCopyWith(
          _$LoadingStatusImpl value, $Res Function(_$LoadingStatusImpl) then) =
      __$$LoadingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStatusImplCopyWithImpl<$Res>
    extends _$QueuedMessagesStatusCopyWithImpl<$Res, _$LoadingStatusImpl>
    implements _$$LoadingStatusImplCopyWith<$Res> {
  __$$LoadingStatusImplCopyWithImpl(
      _$LoadingStatusImpl _value, $Res Function(_$LoadingStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStatusImpl implements _LoadingStatus {
  const _$LoadingStatusImpl();

  @override
  String toString() {
    return 'QueuedMessagesStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() queued,
    required TResult Function() played,
    required TResult Function() loaded,
    required TResult Function(QueuedAudioMessage audioMessage) play,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? queued,
    TResult? Function()? played,
    TResult? Function()? loaded,
    TResult? Function(QueuedAudioMessage audioMessage)? play,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? queued,
    TResult Function()? played,
    TResult Function()? loaded,
    TResult Function(QueuedAudioMessage audioMessage)? play,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialStatus value) initial,
    required TResult Function(_QueuedStatus value) queued,
    required TResult Function(_QueuedPlayed value) played,
    required TResult Function(_LoadedStatus value) loaded,
    required TResult Function(_PlayStatus value) play,
    required TResult Function(_LoadingStatus value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialStatus value)? initial,
    TResult? Function(_QueuedStatus value)? queued,
    TResult? Function(_QueuedPlayed value)? played,
    TResult? Function(_LoadedStatus value)? loaded,
    TResult? Function(_PlayStatus value)? play,
    TResult? Function(_LoadingStatus value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialStatus value)? initial,
    TResult Function(_QueuedStatus value)? queued,
    TResult Function(_QueuedPlayed value)? played,
    TResult Function(_LoadedStatus value)? loaded,
    TResult Function(_PlayStatus value)? play,
    TResult Function(_LoadingStatus value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingStatus implements QueuedMessagesStatus {
  const factory _LoadingStatus() = _$LoadingStatusImpl;
}
