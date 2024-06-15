// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_voice_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomVoiceState _$CustomVoiceStateFromJson(Map<String, dynamic> json) {
  return _CustomVoiceState.fromJson(json);
}

/// @nodoc
mixin _$CustomVoiceState {
  CustomVoiceStatus get status => throw _privateConstructorUsedError;
  List<CustomVoice> get voices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomVoiceStateCopyWith<CustomVoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomVoiceStateCopyWith<$Res> {
  factory $CustomVoiceStateCopyWith(
          CustomVoiceState value, $Res Function(CustomVoiceState) then) =
      _$CustomVoiceStateCopyWithImpl<$Res, CustomVoiceState>;
  @useResult
  $Res call({CustomVoiceStatus status, List<CustomVoice> voices});

  $CustomVoiceStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CustomVoiceStateCopyWithImpl<$Res, $Val extends CustomVoiceState>
    implements $CustomVoiceStateCopyWith<$Res> {
  _$CustomVoiceStateCopyWithImpl(this._value, this._then);

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
              as CustomVoiceStatus,
      voices: null == voices
          ? _value.voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<CustomVoice>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomVoiceStatusCopyWith<$Res> get status {
    return $CustomVoiceStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomVoiceStateImplCopyWith<$Res>
    implements $CustomVoiceStateCopyWith<$Res> {
  factory _$$CustomVoiceStateImplCopyWith(_$CustomVoiceStateImpl value,
          $Res Function(_$CustomVoiceStateImpl) then) =
      __$$CustomVoiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomVoiceStatus status, List<CustomVoice> voices});

  @override
  $CustomVoiceStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$CustomVoiceStateImplCopyWithImpl<$Res>
    extends _$CustomVoiceStateCopyWithImpl<$Res, _$CustomVoiceStateImpl>
    implements _$$CustomVoiceStateImplCopyWith<$Res> {
  __$$CustomVoiceStateImplCopyWithImpl(_$CustomVoiceStateImpl _value,
      $Res Function(_$CustomVoiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? voices = null,
  }) {
    return _then(_$CustomVoiceStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CustomVoiceStatus,
      voices: null == voices
          ? _value._voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<CustomVoice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomVoiceStateImpl implements _CustomVoiceState {
  const _$CustomVoiceStateImpl(
      {required this.status,
      final List<CustomVoice> voices = const <CustomVoice>[]})
      : _voices = voices;

  factory _$CustomVoiceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomVoiceStateImplFromJson(json);

  @override
  final CustomVoiceStatus status;
  final List<CustomVoice> _voices;
  @override
  @JsonKey()
  List<CustomVoice> get voices {
    if (_voices is EqualUnmodifiableListView) return _voices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voices);
  }

  @override
  String toString() {
    return 'CustomVoiceState(status: $status, voices: $voices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomVoiceStateImpl &&
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
  _$$CustomVoiceStateImplCopyWith<_$CustomVoiceStateImpl> get copyWith =>
      __$$CustomVoiceStateImplCopyWithImpl<_$CustomVoiceStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomVoiceStateImplToJson(
      this,
    );
  }
}

abstract class _CustomVoiceState implements CustomVoiceState {
  const factory _CustomVoiceState(
      {required final CustomVoiceStatus status,
      final List<CustomVoice> voices}) = _$CustomVoiceStateImpl;

  factory _CustomVoiceState.fromJson(Map<String, dynamic> json) =
      _$CustomVoiceStateImpl.fromJson;

  @override
  CustomVoiceStatus get status;
  @override
  List<CustomVoice> get voices;
  @override
  @JsonKey(ignore: true)
  _$$CustomVoiceStateImplCopyWith<_$CustomVoiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomVoiceStatus _$CustomVoiceStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _CustomVoiceInitial.fromJson(json);
    case 'selected':
      return _CustomVoiceSelected.fromJson(json);
    case 'customize':
      return _CustomVoiceCustomize.fromJson(json);
    case 'saved':
      return _CustomVoiceSaved.fromJson(json);
    case 'edited':
      return _CustomVoiceEdited.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CustomVoiceStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CustomVoiceStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Voice voice) selected,
    required TResult Function(Voice voice) customize,
    required TResult Function() saved,
    required TResult Function() edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Voice voice)? selected,
    TResult? Function(Voice voice)? customize,
    TResult? Function()? saved,
    TResult? Function()? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Voice voice)? selected,
    TResult Function(Voice voice)? customize,
    TResult Function()? saved,
    TResult Function()? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomVoiceInitial value) initial,
    required TResult Function(_CustomVoiceSelected value) selected,
    required TResult Function(_CustomVoiceCustomize value) customize,
    required TResult Function(_CustomVoiceSaved value) saved,
    required TResult Function(_CustomVoiceEdited value) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomVoiceInitial value)? initial,
    TResult? Function(_CustomVoiceSelected value)? selected,
    TResult? Function(_CustomVoiceCustomize value)? customize,
    TResult? Function(_CustomVoiceSaved value)? saved,
    TResult? Function(_CustomVoiceEdited value)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomVoiceInitial value)? initial,
    TResult Function(_CustomVoiceSelected value)? selected,
    TResult Function(_CustomVoiceCustomize value)? customize,
    TResult Function(_CustomVoiceSaved value)? saved,
    TResult Function(_CustomVoiceEdited value)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomVoiceStatusCopyWith<$Res> {
  factory $CustomVoiceStatusCopyWith(
          CustomVoiceStatus value, $Res Function(CustomVoiceStatus) then) =
      _$CustomVoiceStatusCopyWithImpl<$Res, CustomVoiceStatus>;
}

/// @nodoc
class _$CustomVoiceStatusCopyWithImpl<$Res, $Val extends CustomVoiceStatus>
    implements $CustomVoiceStatusCopyWith<$Res> {
  _$CustomVoiceStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomVoiceInitialImplCopyWith<$Res> {
  factory _$$CustomVoiceInitialImplCopyWith(_$CustomVoiceInitialImpl value,
          $Res Function(_$CustomVoiceInitialImpl) then) =
      __$$CustomVoiceInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomVoiceInitialImplCopyWithImpl<$Res>
    extends _$CustomVoiceStatusCopyWithImpl<$Res, _$CustomVoiceInitialImpl>
    implements _$$CustomVoiceInitialImplCopyWith<$Res> {
  __$$CustomVoiceInitialImplCopyWithImpl(_$CustomVoiceInitialImpl _value,
      $Res Function(_$CustomVoiceInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CustomVoiceInitialImpl implements _CustomVoiceInitial {
  const _$CustomVoiceInitialImpl({final String? $type})
      : $type = $type ?? 'initial';

  factory _$CustomVoiceInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomVoiceInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomVoiceStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CustomVoiceInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Voice voice) selected,
    required TResult Function(Voice voice) customize,
    required TResult Function() saved,
    required TResult Function() edited,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Voice voice)? selected,
    TResult? Function(Voice voice)? customize,
    TResult? Function()? saved,
    TResult? Function()? edited,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Voice voice)? selected,
    TResult Function(Voice voice)? customize,
    TResult Function()? saved,
    TResult Function()? edited,
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
    required TResult Function(_CustomVoiceInitial value) initial,
    required TResult Function(_CustomVoiceSelected value) selected,
    required TResult Function(_CustomVoiceCustomize value) customize,
    required TResult Function(_CustomVoiceSaved value) saved,
    required TResult Function(_CustomVoiceEdited value) edited,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomVoiceInitial value)? initial,
    TResult? Function(_CustomVoiceSelected value)? selected,
    TResult? Function(_CustomVoiceCustomize value)? customize,
    TResult? Function(_CustomVoiceSaved value)? saved,
    TResult? Function(_CustomVoiceEdited value)? edited,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomVoiceInitial value)? initial,
    TResult Function(_CustomVoiceSelected value)? selected,
    TResult Function(_CustomVoiceCustomize value)? customize,
    TResult Function(_CustomVoiceSaved value)? saved,
    TResult Function(_CustomVoiceEdited value)? edited,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomVoiceInitialImplToJson(
      this,
    );
  }
}

abstract class _CustomVoiceInitial implements CustomVoiceStatus {
  const factory _CustomVoiceInitial() = _$CustomVoiceInitialImpl;

  factory _CustomVoiceInitial.fromJson(Map<String, dynamic> json) =
      _$CustomVoiceInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$CustomVoiceSelectedImplCopyWith<$Res> {
  factory _$$CustomVoiceSelectedImplCopyWith(_$CustomVoiceSelectedImpl value,
          $Res Function(_$CustomVoiceSelectedImpl) then) =
      __$$CustomVoiceSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Voice voice});
}

/// @nodoc
class __$$CustomVoiceSelectedImplCopyWithImpl<$Res>
    extends _$CustomVoiceStatusCopyWithImpl<$Res, _$CustomVoiceSelectedImpl>
    implements _$$CustomVoiceSelectedImplCopyWith<$Res> {
  __$$CustomVoiceSelectedImplCopyWithImpl(_$CustomVoiceSelectedImpl _value,
      $Res Function(_$CustomVoiceSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voice = null,
  }) {
    return _then(_$CustomVoiceSelectedImpl(
      null == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as Voice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomVoiceSelectedImpl implements _CustomVoiceSelected {
  const _$CustomVoiceSelectedImpl(this.voice, {final String? $type})
      : $type = $type ?? 'selected';

  factory _$CustomVoiceSelectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomVoiceSelectedImplFromJson(json);

  @override
  final Voice voice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomVoiceStatus.selected(voice: $voice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomVoiceSelectedImpl &&
            (identical(other.voice, voice) || other.voice == voice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, voice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomVoiceSelectedImplCopyWith<_$CustomVoiceSelectedImpl> get copyWith =>
      __$$CustomVoiceSelectedImplCopyWithImpl<_$CustomVoiceSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Voice voice) selected,
    required TResult Function(Voice voice) customize,
    required TResult Function() saved,
    required TResult Function() edited,
  }) {
    return selected(voice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Voice voice)? selected,
    TResult? Function(Voice voice)? customize,
    TResult? Function()? saved,
    TResult? Function()? edited,
  }) {
    return selected?.call(voice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Voice voice)? selected,
    TResult Function(Voice voice)? customize,
    TResult Function()? saved,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(voice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomVoiceInitial value) initial,
    required TResult Function(_CustomVoiceSelected value) selected,
    required TResult Function(_CustomVoiceCustomize value) customize,
    required TResult Function(_CustomVoiceSaved value) saved,
    required TResult Function(_CustomVoiceEdited value) edited,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomVoiceInitial value)? initial,
    TResult? Function(_CustomVoiceSelected value)? selected,
    TResult? Function(_CustomVoiceCustomize value)? customize,
    TResult? Function(_CustomVoiceSaved value)? saved,
    TResult? Function(_CustomVoiceEdited value)? edited,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomVoiceInitial value)? initial,
    TResult Function(_CustomVoiceSelected value)? selected,
    TResult Function(_CustomVoiceCustomize value)? customize,
    TResult Function(_CustomVoiceSaved value)? saved,
    TResult Function(_CustomVoiceEdited value)? edited,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomVoiceSelectedImplToJson(
      this,
    );
  }
}

abstract class _CustomVoiceSelected implements CustomVoiceStatus {
  const factory _CustomVoiceSelected(final Voice voice) =
      _$CustomVoiceSelectedImpl;

  factory _CustomVoiceSelected.fromJson(Map<String, dynamic> json) =
      _$CustomVoiceSelectedImpl.fromJson;

  Voice get voice;
  @JsonKey(ignore: true)
  _$$CustomVoiceSelectedImplCopyWith<_$CustomVoiceSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomVoiceCustomizeImplCopyWith<$Res> {
  factory _$$CustomVoiceCustomizeImplCopyWith(_$CustomVoiceCustomizeImpl value,
          $Res Function(_$CustomVoiceCustomizeImpl) then) =
      __$$CustomVoiceCustomizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Voice voice});
}

/// @nodoc
class __$$CustomVoiceCustomizeImplCopyWithImpl<$Res>
    extends _$CustomVoiceStatusCopyWithImpl<$Res, _$CustomVoiceCustomizeImpl>
    implements _$$CustomVoiceCustomizeImplCopyWith<$Res> {
  __$$CustomVoiceCustomizeImplCopyWithImpl(_$CustomVoiceCustomizeImpl _value,
      $Res Function(_$CustomVoiceCustomizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voice = null,
  }) {
    return _then(_$CustomVoiceCustomizeImpl(
      null == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as Voice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomVoiceCustomizeImpl implements _CustomVoiceCustomize {
  const _$CustomVoiceCustomizeImpl(this.voice, {final String? $type})
      : $type = $type ?? 'customize';

  factory _$CustomVoiceCustomizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomVoiceCustomizeImplFromJson(json);

  @override
  final Voice voice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomVoiceStatus.customize(voice: $voice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomVoiceCustomizeImpl &&
            (identical(other.voice, voice) || other.voice == voice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, voice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomVoiceCustomizeImplCopyWith<_$CustomVoiceCustomizeImpl>
      get copyWith =>
          __$$CustomVoiceCustomizeImplCopyWithImpl<_$CustomVoiceCustomizeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Voice voice) selected,
    required TResult Function(Voice voice) customize,
    required TResult Function() saved,
    required TResult Function() edited,
  }) {
    return customize(voice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Voice voice)? selected,
    TResult? Function(Voice voice)? customize,
    TResult? Function()? saved,
    TResult? Function()? edited,
  }) {
    return customize?.call(voice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Voice voice)? selected,
    TResult Function(Voice voice)? customize,
    TResult Function()? saved,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (customize != null) {
      return customize(voice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomVoiceInitial value) initial,
    required TResult Function(_CustomVoiceSelected value) selected,
    required TResult Function(_CustomVoiceCustomize value) customize,
    required TResult Function(_CustomVoiceSaved value) saved,
    required TResult Function(_CustomVoiceEdited value) edited,
  }) {
    return customize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomVoiceInitial value)? initial,
    TResult? Function(_CustomVoiceSelected value)? selected,
    TResult? Function(_CustomVoiceCustomize value)? customize,
    TResult? Function(_CustomVoiceSaved value)? saved,
    TResult? Function(_CustomVoiceEdited value)? edited,
  }) {
    return customize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomVoiceInitial value)? initial,
    TResult Function(_CustomVoiceSelected value)? selected,
    TResult Function(_CustomVoiceCustomize value)? customize,
    TResult Function(_CustomVoiceSaved value)? saved,
    TResult Function(_CustomVoiceEdited value)? edited,
    required TResult orElse(),
  }) {
    if (customize != null) {
      return customize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomVoiceCustomizeImplToJson(
      this,
    );
  }
}

abstract class _CustomVoiceCustomize implements CustomVoiceStatus {
  const factory _CustomVoiceCustomize(final Voice voice) =
      _$CustomVoiceCustomizeImpl;

  factory _CustomVoiceCustomize.fromJson(Map<String, dynamic> json) =
      _$CustomVoiceCustomizeImpl.fromJson;

  Voice get voice;
  @JsonKey(ignore: true)
  _$$CustomVoiceCustomizeImplCopyWith<_$CustomVoiceCustomizeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomVoiceSavedImplCopyWith<$Res> {
  factory _$$CustomVoiceSavedImplCopyWith(_$CustomVoiceSavedImpl value,
          $Res Function(_$CustomVoiceSavedImpl) then) =
      __$$CustomVoiceSavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomVoiceSavedImplCopyWithImpl<$Res>
    extends _$CustomVoiceStatusCopyWithImpl<$Res, _$CustomVoiceSavedImpl>
    implements _$$CustomVoiceSavedImplCopyWith<$Res> {
  __$$CustomVoiceSavedImplCopyWithImpl(_$CustomVoiceSavedImpl _value,
      $Res Function(_$CustomVoiceSavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CustomVoiceSavedImpl implements _CustomVoiceSaved {
  const _$CustomVoiceSavedImpl({final String? $type})
      : $type = $type ?? 'saved';

  factory _$CustomVoiceSavedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomVoiceSavedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomVoiceStatus.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CustomVoiceSavedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Voice voice) selected,
    required TResult Function(Voice voice) customize,
    required TResult Function() saved,
    required TResult Function() edited,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Voice voice)? selected,
    TResult? Function(Voice voice)? customize,
    TResult? Function()? saved,
    TResult? Function()? edited,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Voice voice)? selected,
    TResult Function(Voice voice)? customize,
    TResult Function()? saved,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomVoiceInitial value) initial,
    required TResult Function(_CustomVoiceSelected value) selected,
    required TResult Function(_CustomVoiceCustomize value) customize,
    required TResult Function(_CustomVoiceSaved value) saved,
    required TResult Function(_CustomVoiceEdited value) edited,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomVoiceInitial value)? initial,
    TResult? Function(_CustomVoiceSelected value)? selected,
    TResult? Function(_CustomVoiceCustomize value)? customize,
    TResult? Function(_CustomVoiceSaved value)? saved,
    TResult? Function(_CustomVoiceEdited value)? edited,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomVoiceInitial value)? initial,
    TResult Function(_CustomVoiceSelected value)? selected,
    TResult Function(_CustomVoiceCustomize value)? customize,
    TResult Function(_CustomVoiceSaved value)? saved,
    TResult Function(_CustomVoiceEdited value)? edited,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomVoiceSavedImplToJson(
      this,
    );
  }
}

abstract class _CustomVoiceSaved implements CustomVoiceStatus {
  const factory _CustomVoiceSaved() = _$CustomVoiceSavedImpl;

  factory _CustomVoiceSaved.fromJson(Map<String, dynamic> json) =
      _$CustomVoiceSavedImpl.fromJson;
}

/// @nodoc
abstract class _$$CustomVoiceEditedImplCopyWith<$Res> {
  factory _$$CustomVoiceEditedImplCopyWith(_$CustomVoiceEditedImpl value,
          $Res Function(_$CustomVoiceEditedImpl) then) =
      __$$CustomVoiceEditedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomVoiceEditedImplCopyWithImpl<$Res>
    extends _$CustomVoiceStatusCopyWithImpl<$Res, _$CustomVoiceEditedImpl>
    implements _$$CustomVoiceEditedImplCopyWith<$Res> {
  __$$CustomVoiceEditedImplCopyWithImpl(_$CustomVoiceEditedImpl _value,
      $Res Function(_$CustomVoiceEditedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CustomVoiceEditedImpl implements _CustomVoiceEdited {
  const _$CustomVoiceEditedImpl({final String? $type})
      : $type = $type ?? 'edited';

  factory _$CustomVoiceEditedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomVoiceEditedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomVoiceStatus.edited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CustomVoiceEditedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Voice voice) selected,
    required TResult Function(Voice voice) customize,
    required TResult Function() saved,
    required TResult Function() edited,
  }) {
    return edited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Voice voice)? selected,
    TResult? Function(Voice voice)? customize,
    TResult? Function()? saved,
    TResult? Function()? edited,
  }) {
    return edited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Voice voice)? selected,
    TResult Function(Voice voice)? customize,
    TResult Function()? saved,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomVoiceInitial value) initial,
    required TResult Function(_CustomVoiceSelected value) selected,
    required TResult Function(_CustomVoiceCustomize value) customize,
    required TResult Function(_CustomVoiceSaved value) saved,
    required TResult Function(_CustomVoiceEdited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomVoiceInitial value)? initial,
    TResult? Function(_CustomVoiceSelected value)? selected,
    TResult? Function(_CustomVoiceCustomize value)? customize,
    TResult? Function(_CustomVoiceSaved value)? saved,
    TResult? Function(_CustomVoiceEdited value)? edited,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomVoiceInitial value)? initial,
    TResult Function(_CustomVoiceSelected value)? selected,
    TResult Function(_CustomVoiceCustomize value)? customize,
    TResult Function(_CustomVoiceSaved value)? saved,
    TResult Function(_CustomVoiceEdited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomVoiceEditedImplToJson(
      this,
    );
  }
}

abstract class _CustomVoiceEdited implements CustomVoiceStatus {
  const factory _CustomVoiceEdited() = _$CustomVoiceEditedImpl;

  factory _CustomVoiceEdited.fromJson(Map<String, dynamic> json) =
      _$CustomVoiceEditedImpl.fromJson;
}
