// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eleven_labs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ElevenLabsState {
  ElevenLabStatus get status => throw _privateConstructorUsedError;
  ElevenLabsVoiceList get voices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElevenLabsStateCopyWith<ElevenLabsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElevenLabsStateCopyWith<$Res> {
  factory $ElevenLabsStateCopyWith(
          ElevenLabsState value, $Res Function(ElevenLabsState) then) =
      _$ElevenLabsStateCopyWithImpl<$Res, ElevenLabsState>;
  @useResult
  $Res call({ElevenLabStatus status, ElevenLabsVoiceList voices});

  $ElevenLabStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ElevenLabsStateCopyWithImpl<$Res, $Val extends ElevenLabsState>
    implements $ElevenLabsStateCopyWith<$Res> {
  _$ElevenLabsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? voices = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ElevenLabStatus,
      voices: null == voices
          ? _value.voices
          : voices // ignore: cast_nullable_to_non_nullable
              as ElevenLabsVoiceList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElevenLabStatusCopyWith<$Res> get status {
    return $ElevenLabStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ElevenLabsStateImplCopyWith<$Res>
    implements $ElevenLabsStateCopyWith<$Res> {
  factory _$$ElevenLabsStateImplCopyWith(_$ElevenLabsStateImpl value,
          $Res Function(_$ElevenLabsStateImpl) then) =
      __$$ElevenLabsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ElevenLabStatus status, ElevenLabsVoiceList voices});

  @override
  $ElevenLabStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ElevenLabsStateImplCopyWithImpl<$Res>
    extends _$ElevenLabsStateCopyWithImpl<$Res, _$ElevenLabsStateImpl>
    implements _$$ElevenLabsStateImplCopyWith<$Res> {
  __$$ElevenLabsStateImplCopyWithImpl(
      _$ElevenLabsStateImpl _value, $Res Function(_$ElevenLabsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? voices = null,
  }) {
    return _then(_$ElevenLabsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ElevenLabStatus,
      voices: null == voices
          ? _value.voices
          : voices // ignore: cast_nullable_to_non_nullable
              as ElevenLabsVoiceList,
    ));
  }
}

/// @nodoc

class _$ElevenLabsStateImpl implements _ElevenLabsState {
  const _$ElevenLabsStateImpl(
      {required this.status,
      this.voices = const ElevenLabsVoiceList(voices: <ElevenLabsVoice>[])});

  @override
  final ElevenLabStatus status;
  @override
  @JsonKey()
  final ElevenLabsVoiceList voices;

  @override
  String toString() {
    return 'ElevenLabsState(status: $status, voices: $voices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElevenLabsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.voices, voices) || other.voices == voices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, voices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElevenLabsStateImplCopyWith<_$ElevenLabsStateImpl> get copyWith =>
      __$$ElevenLabsStateImplCopyWithImpl<_$ElevenLabsStateImpl>(
          this, _$identity);
}

abstract class _ElevenLabsState implements ElevenLabsState {
  const factory _ElevenLabsState(
      {required final ElevenLabStatus status,
      final ElevenLabsVoiceList voices}) = _$ElevenLabsStateImpl;

  @override
  ElevenLabStatus get status;
  @override
  ElevenLabsVoiceList get voices;
  @override
  @JsonKey(ignore: true)
  _$$ElevenLabsStateImplCopyWith<_$ElevenLabsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ElevenLabStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() voicesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? voicesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? voicesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_VoicesLoaded value) voicesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_VoicesLoaded value)? voicesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_VoicesLoaded value)? voicesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElevenLabStatusCopyWith<$Res> {
  factory $ElevenLabStatusCopyWith(
          ElevenLabStatus value, $Res Function(ElevenLabStatus) then) =
      _$ElevenLabStatusCopyWithImpl<$Res, ElevenLabStatus>;
}

/// @nodoc
class _$ElevenLabStatusCopyWithImpl<$Res, $Val extends ElevenLabStatus>
    implements $ElevenLabStatusCopyWith<$Res> {
  _$ElevenLabStatusCopyWithImpl(this._value, this._then);

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
    extends _$ElevenLabStatusCopyWithImpl<$Res, _$StatusInitialImpl>
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
    return 'ElevenLabStatus.initial()';
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
    required TResult Function() voicesLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? voicesLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? voicesLoaded,
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
    required TResult Function(_VoicesLoaded value) voicesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_VoicesLoaded value)? voicesLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_VoicesLoaded value)? voicesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StatusInitial implements ElevenLabStatus {
  const factory _StatusInitial() = _$StatusInitialImpl;
}

/// @nodoc
abstract class _$$VoicesLoadedImplCopyWith<$Res> {
  factory _$$VoicesLoadedImplCopyWith(
          _$VoicesLoadedImpl value, $Res Function(_$VoicesLoadedImpl) then) =
      __$$VoicesLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoicesLoadedImplCopyWithImpl<$Res>
    extends _$ElevenLabStatusCopyWithImpl<$Res, _$VoicesLoadedImpl>
    implements _$$VoicesLoadedImplCopyWith<$Res> {
  __$$VoicesLoadedImplCopyWithImpl(
      _$VoicesLoadedImpl _value, $Res Function(_$VoicesLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoicesLoadedImpl implements _VoicesLoaded {
  const _$VoicesLoadedImpl();

  @override
  String toString() {
    return 'ElevenLabStatus.voicesLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoicesLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() voicesLoaded,
  }) {
    return voicesLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? voicesLoaded,
  }) {
    return voicesLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? voicesLoaded,
    required TResult orElse(),
  }) {
    if (voicesLoaded != null) {
      return voicesLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusInitial value) initial,
    required TResult Function(_VoicesLoaded value) voicesLoaded,
  }) {
    return voicesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusInitial value)? initial,
    TResult? Function(_VoicesLoaded value)? voicesLoaded,
  }) {
    return voicesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusInitial value)? initial,
    TResult Function(_VoicesLoaded value)? voicesLoaded,
    required TResult orElse(),
  }) {
    if (voicesLoaded != null) {
      return voicesLoaded(this);
    }
    return orElse();
  }
}

abstract class _VoicesLoaded implements ElevenLabStatus {
  const factory _VoicesLoaded() = _$VoicesLoadedImpl;
}
