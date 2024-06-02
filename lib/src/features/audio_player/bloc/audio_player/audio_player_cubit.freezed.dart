// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioPlayerState {
  AudioPlayerStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res, AudioPlayerState>;
  @useResult
  $Res call({AudioPlayerStatus status});

  $AudioPlayerStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res, $Val extends AudioPlayerState>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AudioPlayerStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioPlayerStatusCopyWith<$Res> get status {
    return $AudioPlayerStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioPlayerStateImplCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$$AudioPlayerStateImplCopyWith(_$AudioPlayerStateImpl value,
          $Res Function(_$AudioPlayerStateImpl) then) =
      __$$AudioPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AudioPlayerStatus status});

  @override
  $AudioPlayerStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AudioPlayerStateImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$AudioPlayerStateImpl>
    implements _$$AudioPlayerStateImplCopyWith<$Res> {
  __$$AudioPlayerStateImplCopyWithImpl(_$AudioPlayerStateImpl _value,
      $Res Function(_$AudioPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AudioPlayerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AudioPlayerStatus,
    ));
  }
}

/// @nodoc

class _$AudioPlayerStateImpl implements _AudioPlayerState {
  const _$AudioPlayerStateImpl({required this.status});

  @override
  final AudioPlayerStatus status;

  @override
  String toString() {
    return 'AudioPlayerState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayerStateImplCopyWith<_$AudioPlayerStateImpl> get copyWith =>
      __$$AudioPlayerStateImplCopyWithImpl<_$AudioPlayerStateImpl>(
          this, _$identity);
}

abstract class _AudioPlayerState implements AudioPlayerState {
  const factory _AudioPlayerState({required final AudioPlayerStatus status}) =
      _$AudioPlayerStateImpl;

  @override
  AudioPlayerStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AudioPlayerStateImplCopyWith<_$AudioPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioPlayerStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(String authorName, String text) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stop,
    TResult? Function(String authorName, String text)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(String authorName, String text)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlayerStatusStop value) stop,
    required TResult Function(_AudioPlayerStatusPlaying value) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlayerStatusStop value)? stop,
    TResult? Function(_AudioPlayerStatusPlaying value)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlayerStatusStop value)? stop,
    TResult Function(_AudioPlayerStatusPlaying value)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStatusCopyWith<$Res> {
  factory $AudioPlayerStatusCopyWith(
          AudioPlayerStatus value, $Res Function(AudioPlayerStatus) then) =
      _$AudioPlayerStatusCopyWithImpl<$Res, AudioPlayerStatus>;
}

/// @nodoc
class _$AudioPlayerStatusCopyWithImpl<$Res, $Val extends AudioPlayerStatus>
    implements $AudioPlayerStatusCopyWith<$Res> {
  _$AudioPlayerStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AudioPlayerStatusStopImplCopyWith<$Res> {
  factory _$$AudioPlayerStatusStopImplCopyWith(
          _$AudioPlayerStatusStopImpl value,
          $Res Function(_$AudioPlayerStatusStopImpl) then) =
      __$$AudioPlayerStatusStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPlayerStatusStopImplCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$AudioPlayerStatusStopImpl>
    implements _$$AudioPlayerStatusStopImplCopyWith<$Res> {
  __$$AudioPlayerStatusStopImplCopyWithImpl(_$AudioPlayerStatusStopImpl _value,
      $Res Function(_$AudioPlayerStatusStopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioPlayerStatusStopImpl implements _AudioPlayerStatusStop {
  const _$AudioPlayerStatusStopImpl();

  @override
  String toString() {
    return 'AudioPlayerStatus.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStatusStopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(String authorName, String text) playing,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stop,
    TResult? Function(String authorName, String text)? playing,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(String authorName, String text)? playing,
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
    required TResult Function(_AudioPlayerStatusStop value) stop,
    required TResult Function(_AudioPlayerStatusPlaying value) playing,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlayerStatusStop value)? stop,
    TResult? Function(_AudioPlayerStatusPlaying value)? playing,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlayerStatusStop value)? stop,
    TResult Function(_AudioPlayerStatusPlaying value)? playing,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _AudioPlayerStatusStop implements AudioPlayerStatus {
  const factory _AudioPlayerStatusStop() = _$AudioPlayerStatusStopImpl;
}

/// @nodoc
abstract class _$$AudioPlayerStatusPlayingImplCopyWith<$Res> {
  factory _$$AudioPlayerStatusPlayingImplCopyWith(
          _$AudioPlayerStatusPlayingImpl value,
          $Res Function(_$AudioPlayerStatusPlayingImpl) then) =
      __$$AudioPlayerStatusPlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String authorName, String text});
}

/// @nodoc
class __$$AudioPlayerStatusPlayingImplCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res,
        _$AudioPlayerStatusPlayingImpl>
    implements _$$AudioPlayerStatusPlayingImplCopyWith<$Res> {
  __$$AudioPlayerStatusPlayingImplCopyWithImpl(
      _$AudioPlayerStatusPlayingImpl _value,
      $Res Function(_$AudioPlayerStatusPlayingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = null,
    Object? text = null,
  }) {
    return _then(_$AudioPlayerStatusPlayingImpl(
      null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AudioPlayerStatusPlayingImpl implements _AudioPlayerStatusPlaying {
  const _$AudioPlayerStatusPlayingImpl(this.authorName, this.text);

  @override
  final String authorName;
  @override
  final String text;

  @override
  String toString() {
    return 'AudioPlayerStatus.playing(authorName: $authorName, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStatusPlayingImpl &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorName, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayerStatusPlayingImplCopyWith<_$AudioPlayerStatusPlayingImpl>
      get copyWith => __$$AudioPlayerStatusPlayingImplCopyWithImpl<
          _$AudioPlayerStatusPlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(String authorName, String text) playing,
  }) {
    return playing(authorName, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stop,
    TResult? Function(String authorName, String text)? playing,
  }) {
    return playing?.call(authorName, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(String authorName, String text)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(authorName, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlayerStatusStop value) stop,
    required TResult Function(_AudioPlayerStatusPlaying value) playing,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlayerStatusStop value)? stop,
    TResult? Function(_AudioPlayerStatusPlaying value)? playing,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlayerStatusStop value)? stop,
    TResult Function(_AudioPlayerStatusPlaying value)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _AudioPlayerStatusPlaying implements AudioPlayerStatus {
  const factory _AudioPlayerStatusPlaying(
          final String authorName, final String text) =
      _$AudioPlayerStatusPlayingImpl;

  String get authorName;
  String get text;
  @JsonKey(ignore: true)
  _$$AudioPlayerStatusPlayingImplCopyWith<_$AudioPlayerStatusPlayingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
