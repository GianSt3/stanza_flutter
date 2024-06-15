// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_scrapper_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoutubeScrapperState {
  YoutubeScrapperStatus get status => throw _privateConstructorUsedError;
  Chat get chat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeScrapperStateCopyWith<YoutubeScrapperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeScrapperStateCopyWith<$Res> {
  factory $YoutubeScrapperStateCopyWith(YoutubeScrapperState value,
          $Res Function(YoutubeScrapperState) then) =
      _$YoutubeScrapperStateCopyWithImpl<$Res, YoutubeScrapperState>;
  @useResult
  $Res call({YoutubeScrapperStatus status, Chat chat});

  $YoutubeScrapperStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$YoutubeScrapperStateCopyWithImpl<$Res,
        $Val extends YoutubeScrapperState>
    implements $YoutubeScrapperStateCopyWith<$Res> {
  _$YoutubeScrapperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chat = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as YoutubeScrapperStatus,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeScrapperStatusCopyWith<$Res> get status {
    return $YoutubeScrapperStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YoutubeScrapperStateImplCopyWith<$Res>
    implements $YoutubeScrapperStateCopyWith<$Res> {
  factory _$$YoutubeScrapperStateImplCopyWith(_$YoutubeScrapperStateImpl value,
          $Res Function(_$YoutubeScrapperStateImpl) then) =
      __$$YoutubeScrapperStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubeScrapperStatus status, Chat chat});

  @override
  $YoutubeScrapperStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$YoutubeScrapperStateImplCopyWithImpl<$Res>
    extends _$YoutubeScrapperStateCopyWithImpl<$Res, _$YoutubeScrapperStateImpl>
    implements _$$YoutubeScrapperStateImplCopyWith<$Res> {
  __$$YoutubeScrapperStateImplCopyWithImpl(_$YoutubeScrapperStateImpl _value,
      $Res Function(_$YoutubeScrapperStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chat = null,
  }) {
    return _then(_$YoutubeScrapperStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as YoutubeScrapperStatus,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }
}

/// @nodoc

class _$YoutubeScrapperStateImpl extends _YoutubeScrapperState {
  const _$YoutubeScrapperStateImpl(
      {required this.status,
      this.chat = const Chat(messages: <YoutubeMessage>[])})
      : super._();

  @override
  final YoutubeScrapperStatus status;
  @override
  @JsonKey()
  final Chat chat;

  @override
  String toString() {
    return 'YoutubeScrapperState(status: $status, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeScrapperStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeScrapperStateImplCopyWith<_$YoutubeScrapperStateImpl>
      get copyWith =>
          __$$YoutubeScrapperStateImplCopyWithImpl<_$YoutubeScrapperStateImpl>(
              this, _$identity);
}

abstract class _YoutubeScrapperState extends YoutubeScrapperState {
  const factory _YoutubeScrapperState(
      {required final YoutubeScrapperStatus status,
      final Chat chat}) = _$YoutubeScrapperStateImpl;
  const _YoutubeScrapperState._() : super._();

  @override
  YoutubeScrapperStatus get status;
  @override
  Chat get chat;
  @override
  @JsonKey(ignore: true)
  _$$YoutubeScrapperStateImplCopyWith<_$YoutubeScrapperStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YoutubeScrapperStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
    required TResult Function() reading,
    required TResult Function() stop,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
    TResult? Function()? reading,
    TResult? Function()? stop,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    TResult Function()? reading,
    TResult Function()? stop,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Reading value)? reading,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeScrapperStatusCopyWith<$Res> {
  factory $YoutubeScrapperStatusCopyWith(YoutubeScrapperStatus value,
          $Res Function(YoutubeScrapperStatus) then) =
      _$YoutubeScrapperStatusCopyWithImpl<$Res, YoutubeScrapperStatus>;
}

/// @nodoc
class _$YoutubeScrapperStatusCopyWithImpl<$Res,
        $Val extends YoutubeScrapperStatus>
    implements $YoutubeScrapperStatusCopyWith<$Res> {
  _$YoutubeScrapperStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$YoutubeScrapperStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'YoutubeScrapperStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
    required TResult Function() reading,
    required TResult Function() stop,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
    TResult? Function()? reading,
    TResult? Function()? stop,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    TResult Function()? reading,
    TResult Function()? stop,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Reading value)? reading,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends YoutubeScrapperStatus {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$YoutubeScrapperStatusCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadyImpl extends _Ready {
  const _$ReadyImpl() : super._();

  @override
  String toString() {
    return 'YoutubeScrapperStatus.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
    required TResult Function() reading,
    required TResult Function() stop,
    required TResult Function() error,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
    TResult? Function()? reading,
    TResult? Function()? stop,
    TResult? Function()? error,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    TResult Function()? reading,
    TResult Function()? stop,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Reading value)? reading,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready extends YoutubeScrapperStatus {
  const factory _Ready() = _$ReadyImpl;
  const _Ready._() : super._();
}

/// @nodoc
abstract class _$$ReadingImplCopyWith<$Res> {
  factory _$$ReadingImplCopyWith(
          _$ReadingImpl value, $Res Function(_$ReadingImpl) then) =
      __$$ReadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadingImplCopyWithImpl<$Res>
    extends _$YoutubeScrapperStatusCopyWithImpl<$Res, _$ReadingImpl>
    implements _$$ReadingImplCopyWith<$Res> {
  __$$ReadingImplCopyWithImpl(
      _$ReadingImpl _value, $Res Function(_$ReadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadingImpl extends _Reading {
  const _$ReadingImpl() : super._();

  @override
  String toString() {
    return 'YoutubeScrapperStatus.reading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
    required TResult Function() reading,
    required TResult Function() stop,
    required TResult Function() error,
  }) {
    return reading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
    TResult? Function()? reading,
    TResult? Function()? stop,
    TResult? Function()? error,
  }) {
    return reading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    TResult Function()? reading,
    TResult Function()? stop,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return reading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Error value)? error,
  }) {
    return reading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Reading value)? reading,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(this);
    }
    return orElse();
  }
}

abstract class _Reading extends YoutubeScrapperStatus {
  const factory _Reading() = _$ReadingImpl;
  const _Reading._() : super._();
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$YoutubeScrapperStatusCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopImpl extends _Stop {
  const _$StopImpl() : super._();

  @override
  String toString() {
    return 'YoutubeScrapperStatus.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
    required TResult Function() reading,
    required TResult Function() stop,
    required TResult Function() error,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
    TResult? Function()? reading,
    TResult? Function()? stop,
    TResult? Function()? error,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    TResult Function()? reading,
    TResult Function()? stop,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Error value)? error,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Reading value)? reading,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop extends YoutubeScrapperStatus {
  const factory _Stop() = _$StopImpl;
  const _Stop._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$YoutubeScrapperStatusCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl() : super._();

  @override
  String toString() {
    return 'YoutubeScrapperStatus.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
    required TResult Function() reading,
    required TResult Function() stop,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
    TResult? Function()? reading,
    TResult? Function()? stop,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    TResult Function()? reading,
    TResult Function()? stop,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Reading value)? reading,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends YoutubeScrapperStatus {
  const factory _Error() = _$ErrorImpl;
  const _Error._() : super._();
}
