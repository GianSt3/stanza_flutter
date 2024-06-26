// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_to_speech_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextToSpeechState {
  TextToSpeechStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextToSpeechStateCopyWith<TextToSpeechState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextToSpeechStateCopyWith<$Res> {
  factory $TextToSpeechStateCopyWith(
          TextToSpeechState value, $Res Function(TextToSpeechState) then) =
      _$TextToSpeechStateCopyWithImpl<$Res, TextToSpeechState>;
  @useResult
  $Res call({TextToSpeechStatus status});

  $TextToSpeechStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$TextToSpeechStateCopyWithImpl<$Res, $Val extends TextToSpeechState>
    implements $TextToSpeechStateCopyWith<$Res> {
  _$TextToSpeechStateCopyWithImpl(this._value, this._then);

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
              as TextToSpeechStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextToSpeechStatusCopyWith<$Res> get status {
    return $TextToSpeechStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElevenLabsStateImplCopyWith<$Res>
    implements $TextToSpeechStateCopyWith<$Res> {
  factory _$$ElevenLabsStateImplCopyWith(_$ElevenLabsStateImpl value,
          $Res Function(_$ElevenLabsStateImpl) then) =
      __$$ElevenLabsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextToSpeechStatus status});

  @override
  $TextToSpeechStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ElevenLabsStateImplCopyWithImpl<$Res>
    extends _$TextToSpeechStateCopyWithImpl<$Res, _$ElevenLabsStateImpl>
    implements _$$ElevenLabsStateImplCopyWith<$Res> {
  __$$ElevenLabsStateImplCopyWithImpl(
      _$ElevenLabsStateImpl _value, $Res Function(_$ElevenLabsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ElevenLabsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TextToSpeechStatus,
    ));
  }
}

/// @nodoc

class _$ElevenLabsStateImpl
    with DiagnosticableTreeMixin
    implements _ElevenLabsState {
  const _$ElevenLabsStateImpl({required this.status});

  @override
  final TextToSpeechStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextToSpeechState(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextToSpeechState'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElevenLabsStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElevenLabsStateImplCopyWith<_$ElevenLabsStateImpl> get copyWith =>
      __$$ElevenLabsStateImplCopyWithImpl<_$ElevenLabsStateImpl>(
          this, _$identity);
}

abstract class _ElevenLabsState implements TextToSpeechState {
  const factory _ElevenLabsState({required final TextToSpeechStatus status}) =
      _$ElevenLabsStateImpl;

  @override
  TextToSpeechStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ElevenLabsStateImplCopyWith<_$ElevenLabsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextToSpeechStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String shortHash, Uint8List byteAudioVoice) spoke,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusLoading value) loading,
    required TResult Function(_StatusSpoke value) spoke,
    required TResult Function(_StatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusLoading value)? loading,
    TResult? Function(_StatusSpoke value)? spoke,
    TResult? Function(_StatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusLoading value)? loading,
    TResult Function(_StatusSpoke value)? spoke,
    TResult Function(_StatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextToSpeechStatusCopyWith<$Res> {
  factory $TextToSpeechStatusCopyWith(
          TextToSpeechStatus value, $Res Function(TextToSpeechStatus) then) =
      _$TextToSpeechStatusCopyWithImpl<$Res, TextToSpeechStatus>;
}

/// @nodoc
class _$TextToSpeechStatusCopyWithImpl<$Res, $Val extends TextToSpeechStatus>
    implements $TextToSpeechStatusCopyWith<$Res> {
  _$TextToSpeechStatusCopyWithImpl(this._value, this._then);

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
    extends _$TextToSpeechStatusCopyWithImpl<$Res, _$StatusInitialImpl>
    implements _$$StatusInitialImplCopyWith<$Res> {
  __$$StatusInitialImplCopyWithImpl(
      _$StatusInitialImpl _value, $Res Function(_$StatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusInitialImpl
    with DiagnosticableTreeMixin
    implements _StatusInitial {
  const _$StatusInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextToSpeechStatus.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TextToSpeechStatus.initial'));
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
    required TResult Function() loading,
    required TResult Function(String shortHash, Uint8List byteAudioVoice) spoke,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult Function(String error)? error,
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
    required TResult Function(_StatusLoading value) loading,
    required TResult Function(_StatusSpoke value) spoke,
    required TResult Function(_StatusError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusLoading value)? loading,
    TResult? Function(_StatusSpoke value)? spoke,
    TResult? Function(_StatusError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusLoading value)? loading,
    TResult Function(_StatusSpoke value)? spoke,
    TResult Function(_StatusError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StatusInitial implements TextToSpeechStatus {
  const factory _StatusInitial() = _$StatusInitialImpl;
}

/// @nodoc
abstract class _$$StatusLoadingImplCopyWith<$Res> {
  factory _$$StatusLoadingImplCopyWith(
          _$StatusLoadingImpl value, $Res Function(_$StatusLoadingImpl) then) =
      __$$StatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadingImplCopyWithImpl<$Res>
    extends _$TextToSpeechStatusCopyWithImpl<$Res, _$StatusLoadingImpl>
    implements _$$StatusLoadingImplCopyWith<$Res> {
  __$$StatusLoadingImplCopyWithImpl(
      _$StatusLoadingImpl _value, $Res Function(_$StatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusLoadingImpl
    with DiagnosticableTreeMixin
    implements _StatusLoading {
  const _$StatusLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextToSpeechStatus.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TextToSpeechStatus.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String shortHash, Uint8List byteAudioVoice) spoke,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult Function(String error)? error,
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
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusLoading value) loading,
    required TResult Function(_StatusSpoke value) spoke,
    required TResult Function(_StatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusLoading value)? loading,
    TResult? Function(_StatusSpoke value)? spoke,
    TResult? Function(_StatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusLoading value)? loading,
    TResult Function(_StatusSpoke value)? spoke,
    TResult Function(_StatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StatusLoading implements TextToSpeechStatus {
  const factory _StatusLoading() = _$StatusLoadingImpl;
}

/// @nodoc
abstract class _$$StatusSpokeImplCopyWith<$Res> {
  factory _$$StatusSpokeImplCopyWith(
          _$StatusSpokeImpl value, $Res Function(_$StatusSpokeImpl) then) =
      __$$StatusSpokeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String shortHash, Uint8List byteAudioVoice});
}

/// @nodoc
class __$$StatusSpokeImplCopyWithImpl<$Res>
    extends _$TextToSpeechStatusCopyWithImpl<$Res, _$StatusSpokeImpl>
    implements _$$StatusSpokeImplCopyWith<$Res> {
  __$$StatusSpokeImplCopyWithImpl(
      _$StatusSpokeImpl _value, $Res Function(_$StatusSpokeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortHash = null,
    Object? byteAudioVoice = null,
  }) {
    return _then(_$StatusSpokeImpl(
      null == shortHash
          ? _value.shortHash
          : shortHash // ignore: cast_nullable_to_non_nullable
              as String,
      null == byteAudioVoice
          ? _value.byteAudioVoice
          : byteAudioVoice // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$StatusSpokeImpl with DiagnosticableTreeMixin implements _StatusSpoke {
  const _$StatusSpokeImpl(this.shortHash, this.byteAudioVoice);

  @override
  final String shortHash;
  @override
  final Uint8List byteAudioVoice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextToSpeechStatus.spoke(shortHash: $shortHash, byteAudioVoice: $byteAudioVoice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextToSpeechStatus.spoke'))
      ..add(DiagnosticsProperty('shortHash', shortHash))
      ..add(DiagnosticsProperty('byteAudioVoice', byteAudioVoice));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusSpokeImpl &&
            (identical(other.shortHash, shortHash) ||
                other.shortHash == shortHash) &&
            const DeepCollectionEquality()
                .equals(other.byteAudioVoice, byteAudioVoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shortHash,
      const DeepCollectionEquality().hash(byteAudioVoice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusSpokeImplCopyWith<_$StatusSpokeImpl> get copyWith =>
      __$$StatusSpokeImplCopyWithImpl<_$StatusSpokeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String shortHash, Uint8List byteAudioVoice) spoke,
    required TResult Function(String error) error,
  }) {
    return spoke(shortHash, byteAudioVoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult? Function(String error)? error,
  }) {
    return spoke?.call(shortHash, byteAudioVoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (spoke != null) {
      return spoke(shortHash, byteAudioVoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusLoading value) loading,
    required TResult Function(_StatusSpoke value) spoke,
    required TResult Function(_StatusError value) error,
  }) {
    return spoke(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusLoading value)? loading,
    TResult? Function(_StatusSpoke value)? spoke,
    TResult? Function(_StatusError value)? error,
  }) {
    return spoke?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusLoading value)? loading,
    TResult Function(_StatusSpoke value)? spoke,
    TResult Function(_StatusError value)? error,
    required TResult orElse(),
  }) {
    if (spoke != null) {
      return spoke(this);
    }
    return orElse();
  }
}

abstract class _StatusSpoke implements TextToSpeechStatus {
  const factory _StatusSpoke(
          final String shortHash, final Uint8List byteAudioVoice) =
      _$StatusSpokeImpl;

  String get shortHash;
  Uint8List get byteAudioVoice;
  @JsonKey(ignore: true)
  _$$StatusSpokeImplCopyWith<_$StatusSpokeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusErrorImplCopyWith<$Res> {
  factory _$$StatusErrorImplCopyWith(
          _$StatusErrorImpl value, $Res Function(_$StatusErrorImpl) then) =
      __$$StatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StatusErrorImplCopyWithImpl<$Res>
    extends _$TextToSpeechStatusCopyWithImpl<$Res, _$StatusErrorImpl>
    implements _$$StatusErrorImplCopyWith<$Res> {
  __$$StatusErrorImplCopyWithImpl(
      _$StatusErrorImpl _value, $Res Function(_$StatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StatusErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusErrorImpl with DiagnosticableTreeMixin implements _StatusError {
  const _$StatusErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextToSpeechStatus.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextToSpeechStatus.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusErrorImplCopyWith<_$StatusErrorImpl> get copyWith =>
      __$$StatusErrorImplCopyWithImpl<_$StatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String shortHash, Uint8List byteAudioVoice) spoke,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String shortHash, Uint8List byteAudioVoice)? spoke,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_StatusLoading value) loading,
    required TResult Function(_StatusSpoke value) spoke,
    required TResult Function(_StatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_StatusLoading value)? loading,
    TResult? Function(_StatusSpoke value)? spoke,
    TResult? Function(_StatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_StatusLoading value)? loading,
    TResult Function(_StatusSpoke value)? spoke,
    TResult Function(_StatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StatusError implements TextToSpeechStatus {
  const factory _StatusError(final String error) = _$StatusErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StatusErrorImplCopyWith<_$StatusErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
