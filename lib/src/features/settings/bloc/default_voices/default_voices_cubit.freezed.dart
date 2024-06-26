// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_voices_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefaultVoicesState _$DefaultVoicesStateFromJson(Map<String, dynamic> json) {
  return _DefaultVoicesState.fromJson(json);
}

/// @nodoc
mixin _$DefaultVoicesState {
  DefaultVoicesStatus get status => throw _privateConstructorUsedError;
  List<Voice> get voices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultVoicesStateCopyWith<DefaultVoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultVoicesStateCopyWith<$Res> {
  factory $DefaultVoicesStateCopyWith(
          DefaultVoicesState value, $Res Function(DefaultVoicesState) then) =
      _$DefaultVoicesStateCopyWithImpl<$Res, DefaultVoicesState>;
  @useResult
  $Res call({DefaultVoicesStatus status, List<Voice> voices});

  $DefaultVoicesStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DefaultVoicesStateCopyWithImpl<$Res, $Val extends DefaultVoicesState>
    implements $DefaultVoicesStateCopyWith<$Res> {
  _$DefaultVoicesStateCopyWithImpl(this._value, this._then);

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
              as DefaultVoicesStatus,
      voices: null == voices
          ? _value.voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<Voice>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultVoicesStatusCopyWith<$Res> get status {
    return $DefaultVoicesStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DefaultVoicesStateImplCopyWith<$Res>
    implements $DefaultVoicesStateCopyWith<$Res> {
  factory _$$DefaultVoicesStateImplCopyWith(_$DefaultVoicesStateImpl value,
          $Res Function(_$DefaultVoicesStateImpl) then) =
      __$$DefaultVoicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultVoicesStatus status, List<Voice> voices});

  @override
  $DefaultVoicesStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$DefaultVoicesStateImplCopyWithImpl<$Res>
    extends _$DefaultVoicesStateCopyWithImpl<$Res, _$DefaultVoicesStateImpl>
    implements _$$DefaultVoicesStateImplCopyWith<$Res> {
  __$$DefaultVoicesStateImplCopyWithImpl(_$DefaultVoicesStateImpl _value,
      $Res Function(_$DefaultVoicesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? voices = null,
  }) {
    return _then(_$DefaultVoicesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultVoicesStatus,
      voices: null == voices
          ? _value._voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<Voice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultVoicesStateImpl implements _DefaultVoicesState {
  _$DefaultVoicesStateImpl(
      {required this.status, final List<Voice> voices = const <Voice>[]})
      : _voices = voices;

  factory _$DefaultVoicesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultVoicesStateImplFromJson(json);

  @override
  final DefaultVoicesStatus status;
  final List<Voice> _voices;
  @override
  @JsonKey()
  List<Voice> get voices {
    if (_voices is EqualUnmodifiableListView) return _voices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voices);
  }

  @override
  String toString() {
    return 'DefaultVoicesState(status: $status, voices: $voices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultVoicesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._voices, _voices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_voices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultVoicesStateImplCopyWith<_$DefaultVoicesStateImpl> get copyWith =>
      __$$DefaultVoicesStateImplCopyWithImpl<_$DefaultVoicesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultVoicesStateImplToJson(
      this,
    );
  }
}

abstract class _DefaultVoicesState implements DefaultVoicesState {
  factory _DefaultVoicesState(
      {required final DefaultVoicesStatus status,
      final List<Voice> voices}) = _$DefaultVoicesStateImpl;

  factory _DefaultVoicesState.fromJson(Map<String, dynamic> json) =
      _$DefaultVoicesStateImpl.fromJson;

  @override
  DefaultVoicesStatus get status;
  @override
  List<Voice> get voices;
  @override
  @JsonKey(ignore: true)
  _$$DefaultVoicesStateImplCopyWith<_$DefaultVoicesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultVoicesStatus _$DefaultVoicesStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _VoiceInitial.fromJson(json);
    case 'refreshing':
      return _VoiceRefreshing.fromJson(json);
    case 'loaded':
      return _VoiceLoaded.fromJson(json);
    case 'error':
      return _VoiceError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DefaultVoicesStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DefaultVoicesStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refreshing,
    required TResult Function() loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refreshing,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refreshing,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoiceInitial value) initial,
    required TResult Function(_VoiceRefreshing value) refreshing,
    required TResult Function(_VoiceLoaded value) loaded,
    required TResult Function(_VoiceError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoiceInitial value)? initial,
    TResult? Function(_VoiceRefreshing value)? refreshing,
    TResult? Function(_VoiceLoaded value)? loaded,
    TResult? Function(_VoiceError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoiceInitial value)? initial,
    TResult Function(_VoiceRefreshing value)? refreshing,
    TResult Function(_VoiceLoaded value)? loaded,
    TResult Function(_VoiceError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultVoicesStatusCopyWith<$Res> {
  factory $DefaultVoicesStatusCopyWith(
          DefaultVoicesStatus value, $Res Function(DefaultVoicesStatus) then) =
      _$DefaultVoicesStatusCopyWithImpl<$Res, DefaultVoicesStatus>;
}

/// @nodoc
class _$DefaultVoicesStatusCopyWithImpl<$Res, $Val extends DefaultVoicesStatus>
    implements $DefaultVoicesStatusCopyWith<$Res> {
  _$DefaultVoicesStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VoiceInitialImplCopyWith<$Res> {
  factory _$$VoiceInitialImplCopyWith(
          _$VoiceInitialImpl value, $Res Function(_$VoiceInitialImpl) then) =
      __$$VoiceInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoiceInitialImplCopyWithImpl<$Res>
    extends _$DefaultVoicesStatusCopyWithImpl<$Res, _$VoiceInitialImpl>
    implements _$$VoiceInitialImplCopyWith<$Res> {
  __$$VoiceInitialImplCopyWithImpl(
      _$VoiceInitialImpl _value, $Res Function(_$VoiceInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VoiceInitialImpl implements _VoiceInitial {
  const _$VoiceInitialImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$VoiceInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DefaultVoicesStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoiceInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refreshing,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refreshing,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refreshing,
    TResult Function()? loaded,
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
    required TResult Function(_VoiceInitial value) initial,
    required TResult Function(_VoiceRefreshing value) refreshing,
    required TResult Function(_VoiceLoaded value) loaded,
    required TResult Function(_VoiceError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoiceInitial value)? initial,
    TResult? Function(_VoiceRefreshing value)? refreshing,
    TResult? Function(_VoiceLoaded value)? loaded,
    TResult? Function(_VoiceError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoiceInitial value)? initial,
    TResult Function(_VoiceRefreshing value)? refreshing,
    TResult Function(_VoiceLoaded value)? loaded,
    TResult Function(_VoiceError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceInitialImplToJson(
      this,
    );
  }
}

abstract class _VoiceInitial implements DefaultVoicesStatus {
  const factory _VoiceInitial() = _$VoiceInitialImpl;

  factory _VoiceInitial.fromJson(Map<String, dynamic> json) =
      _$VoiceInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$VoiceRefreshingImplCopyWith<$Res> {
  factory _$$VoiceRefreshingImplCopyWith(_$VoiceRefreshingImpl value,
          $Res Function(_$VoiceRefreshingImpl) then) =
      __$$VoiceRefreshingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoiceRefreshingImplCopyWithImpl<$Res>
    extends _$DefaultVoicesStatusCopyWithImpl<$Res, _$VoiceRefreshingImpl>
    implements _$$VoiceRefreshingImplCopyWith<$Res> {
  __$$VoiceRefreshingImplCopyWithImpl(
      _$VoiceRefreshingImpl _value, $Res Function(_$VoiceRefreshingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VoiceRefreshingImpl implements _VoiceRefreshing {
  const _$VoiceRefreshingImpl({final String? $type})
      : $type = $type ?? 'refreshing';

  factory _$VoiceRefreshingImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceRefreshingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DefaultVoicesStatus.refreshing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoiceRefreshingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refreshing,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refreshing,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return refreshing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refreshing,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoiceInitial value) initial,
    required TResult Function(_VoiceRefreshing value) refreshing,
    required TResult Function(_VoiceLoaded value) loaded,
    required TResult Function(_VoiceError value) error,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoiceInitial value)? initial,
    TResult? Function(_VoiceRefreshing value)? refreshing,
    TResult? Function(_VoiceLoaded value)? loaded,
    TResult? Function(_VoiceError value)? error,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoiceInitial value)? initial,
    TResult Function(_VoiceRefreshing value)? refreshing,
    TResult Function(_VoiceLoaded value)? loaded,
    TResult Function(_VoiceError value)? error,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceRefreshingImplToJson(
      this,
    );
  }
}

abstract class _VoiceRefreshing implements DefaultVoicesStatus {
  const factory _VoiceRefreshing() = _$VoiceRefreshingImpl;

  factory _VoiceRefreshing.fromJson(Map<String, dynamic> json) =
      _$VoiceRefreshingImpl.fromJson;
}

/// @nodoc
abstract class _$$VoiceLoadedImplCopyWith<$Res> {
  factory _$$VoiceLoadedImplCopyWith(
          _$VoiceLoadedImpl value, $Res Function(_$VoiceLoadedImpl) then) =
      __$$VoiceLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoiceLoadedImplCopyWithImpl<$Res>
    extends _$DefaultVoicesStatusCopyWithImpl<$Res, _$VoiceLoadedImpl>
    implements _$$VoiceLoadedImplCopyWith<$Res> {
  __$$VoiceLoadedImplCopyWithImpl(
      _$VoiceLoadedImpl _value, $Res Function(_$VoiceLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VoiceLoadedImpl implements _VoiceLoaded {
  const _$VoiceLoadedImpl({final String? $type}) : $type = $type ?? 'loaded';

  factory _$VoiceLoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceLoadedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DefaultVoicesStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoiceLoadedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refreshing,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refreshing,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refreshing,
    TResult Function()? loaded,
    TResult Function()? error,
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
    required TResult Function(_VoiceInitial value) initial,
    required TResult Function(_VoiceRefreshing value) refreshing,
    required TResult Function(_VoiceLoaded value) loaded,
    required TResult Function(_VoiceError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoiceInitial value)? initial,
    TResult? Function(_VoiceRefreshing value)? refreshing,
    TResult? Function(_VoiceLoaded value)? loaded,
    TResult? Function(_VoiceError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoiceInitial value)? initial,
    TResult Function(_VoiceRefreshing value)? refreshing,
    TResult Function(_VoiceLoaded value)? loaded,
    TResult Function(_VoiceError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceLoadedImplToJson(
      this,
    );
  }
}

abstract class _VoiceLoaded implements DefaultVoicesStatus {
  const factory _VoiceLoaded() = _$VoiceLoadedImpl;

  factory _VoiceLoaded.fromJson(Map<String, dynamic> json) =
      _$VoiceLoadedImpl.fromJson;
}

/// @nodoc
abstract class _$$VoiceErrorImplCopyWith<$Res> {
  factory _$$VoiceErrorImplCopyWith(
          _$VoiceErrorImpl value, $Res Function(_$VoiceErrorImpl) then) =
      __$$VoiceErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoiceErrorImplCopyWithImpl<$Res>
    extends _$DefaultVoicesStatusCopyWithImpl<$Res, _$VoiceErrorImpl>
    implements _$$VoiceErrorImplCopyWith<$Res> {
  __$$VoiceErrorImplCopyWithImpl(
      _$VoiceErrorImpl _value, $Res Function(_$VoiceErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VoiceErrorImpl implements _VoiceError {
  const _$VoiceErrorImpl({final String? $type}) : $type = $type ?? 'error';

  factory _$VoiceErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DefaultVoicesStatus.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoiceErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refreshing,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refreshing,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refreshing,
    TResult Function()? loaded,
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
    required TResult Function(_VoiceInitial value) initial,
    required TResult Function(_VoiceRefreshing value) refreshing,
    required TResult Function(_VoiceLoaded value) loaded,
    required TResult Function(_VoiceError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoiceInitial value)? initial,
    TResult? Function(_VoiceRefreshing value)? refreshing,
    TResult? Function(_VoiceLoaded value)? loaded,
    TResult? Function(_VoiceError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoiceInitial value)? initial,
    TResult Function(_VoiceRefreshing value)? refreshing,
    TResult Function(_VoiceLoaded value)? loaded,
    TResult Function(_VoiceError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceErrorImplToJson(
      this,
    );
  }
}

abstract class _VoiceError implements DefaultVoicesStatus {
  const factory _VoiceError() = _$VoiceErrorImpl;

  factory _VoiceError.fromJson(Map<String, dynamic> json) =
      _$VoiceErrorImpl.fromJson;
}
