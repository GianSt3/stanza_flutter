// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minigame_setup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MinigameSetupState {
  MinigameSetupStateStatus get status => throw _privateConstructorUsedError;
  MinigameSetupStateData get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinigameSetupStateCopyWith<MinigameSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinigameSetupStateCopyWith<$Res> {
  factory $MinigameSetupStateCopyWith(
          MinigameSetupState value, $Res Function(MinigameSetupState) then) =
      _$MinigameSetupStateCopyWithImpl<$Res, MinigameSetupState>;
  @useResult
  $Res call({MinigameSetupStateStatus status, MinigameSetupStateData data});

  $MinigameSetupStateStatusCopyWith<$Res> get status;
  $MinigameSetupStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MinigameSetupStateCopyWithImpl<$Res, $Val extends MinigameSetupState>
    implements $MinigameSetupStateCopyWith<$Res> {
  _$MinigameSetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MinigameSetupStateStatus,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MinigameSetupStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MinigameSetupStateStatusCopyWith<$Res> get status {
    return $MinigameSetupStateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MinigameSetupStateDataCopyWith<$Res> get data {
    return $MinigameSetupStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MinigameSetupStateImplCopyWith<$Res>
    implements $MinigameSetupStateCopyWith<$Res> {
  factory _$$MinigameSetupStateImplCopyWith(_$MinigameSetupStateImpl value,
          $Res Function(_$MinigameSetupStateImpl) then) =
      __$$MinigameSetupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MinigameSetupStateStatus status, MinigameSetupStateData data});

  @override
  $MinigameSetupStateStatusCopyWith<$Res> get status;
  @override
  $MinigameSetupStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MinigameSetupStateImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateCopyWithImpl<$Res, _$MinigameSetupStateImpl>
    implements _$$MinigameSetupStateImplCopyWith<$Res> {
  __$$MinigameSetupStateImplCopyWithImpl(_$MinigameSetupStateImpl _value,
      $Res Function(_$MinigameSetupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$MinigameSetupStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MinigameSetupStateStatus,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MinigameSetupStateData,
    ));
  }
}

/// @nodoc

class _$MinigameSetupStateImpl extends _MinigameSetupState {
  const _$MinigameSetupStateImpl({required this.status, required this.data})
      : super._();

  @override
  final MinigameSetupStateStatus status;
  @override
  final MinigameSetupStateData data;

  @override
  String toString() {
    return 'MinigameSetupState(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinigameSetupStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinigameSetupStateImplCopyWith<_$MinigameSetupStateImpl> get copyWith =>
      __$$MinigameSetupStateImplCopyWithImpl<_$MinigameSetupStateImpl>(
          this, _$identity);
}

abstract class _MinigameSetupState extends MinigameSetupState {
  const factory _MinigameSetupState(
      {required final MinigameSetupStateStatus status,
      required final MinigameSetupStateData data}) = _$MinigameSetupStateImpl;
  const _MinigameSetupState._() : super._();

  @override
  MinigameSetupStateStatus get status;
  @override
  MinigameSetupStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$MinigameSetupStateImplCopyWith<_$MinigameSetupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MinigameSetupStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() poll,
    required TResult Function() press,
    required TResult Function() perform,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? poll,
    TResult? Function()? press,
    TResult? Function()? perform,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? poll,
    TResult Function()? press,
    TResult Function()? perform,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Poll value) poll,
    required TResult Function(_Press value) press,
    required TResult Function(_Perform value) perform,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Poll value)? poll,
    TResult? Function(_Press value)? press,
    TResult? Function(_Perform value)? perform,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Poll value)? poll,
    TResult Function(_Press value)? press,
    TResult Function(_Perform value)? perform,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinigameSetupStateStatusCopyWith<$Res> {
  factory $MinigameSetupStateStatusCopyWith(MinigameSetupStateStatus value,
          $Res Function(MinigameSetupStateStatus) then) =
      _$MinigameSetupStateStatusCopyWithImpl<$Res, MinigameSetupStateStatus>;
}

/// @nodoc
class _$MinigameSetupStateStatusCopyWithImpl<$Res,
        $Val extends MinigameSetupStateStatus>
    implements $MinigameSetupStateStatusCopyWith<$Res> {
  _$MinigameSetupStateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateStatusCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'MinigameSetupStateStatus.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() poll,
    required TResult Function() press,
    required TResult Function() perform,
    required TResult Function() reset,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? poll,
    TResult? Function()? press,
    TResult? Function()? perform,
    TResult? Function()? reset,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? poll,
    TResult Function()? press,
    TResult Function()? perform,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Poll value) poll,
    required TResult Function(_Press value) press,
    required TResult Function(_Perform value) perform,
    required TResult Function(_Reset value) reset,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Poll value)? poll,
    TResult? Function(_Press value)? press,
    TResult? Function(_Perform value)? perform,
    TResult? Function(_Reset value)? reset,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Poll value)? poll,
    TResult Function(_Press value)? press,
    TResult Function(_Perform value)? perform,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements MinigameSetupStateStatus {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$PollImplCopyWith<$Res> {
  factory _$$PollImplCopyWith(
          _$PollImpl value, $Res Function(_$PollImpl) then) =
      __$$PollImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PollImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateStatusCopyWithImpl<$Res, _$PollImpl>
    implements _$$PollImplCopyWith<$Res> {
  __$$PollImplCopyWithImpl(_$PollImpl _value, $Res Function(_$PollImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PollImpl implements _Poll {
  const _$PollImpl();

  @override
  String toString() {
    return 'MinigameSetupStateStatus.poll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PollImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() poll,
    required TResult Function() press,
    required TResult Function() perform,
    required TResult Function() reset,
  }) {
    return poll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? poll,
    TResult? Function()? press,
    TResult? Function()? perform,
    TResult? Function()? reset,
  }) {
    return poll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? poll,
    TResult Function()? press,
    TResult Function()? perform,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (poll != null) {
      return poll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Poll value) poll,
    required TResult Function(_Press value) press,
    required TResult Function(_Perform value) perform,
    required TResult Function(_Reset value) reset,
  }) {
    return poll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Poll value)? poll,
    TResult? Function(_Press value)? press,
    TResult? Function(_Perform value)? perform,
    TResult? Function(_Reset value)? reset,
  }) {
    return poll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Poll value)? poll,
    TResult Function(_Press value)? press,
    TResult Function(_Perform value)? perform,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (poll != null) {
      return poll(this);
    }
    return orElse();
  }
}

abstract class _Poll implements MinigameSetupStateStatus {
  const factory _Poll() = _$PollImpl;
}

/// @nodoc
abstract class _$$PressImplCopyWith<$Res> {
  factory _$$PressImplCopyWith(
          _$PressImpl value, $Res Function(_$PressImpl) then) =
      __$$PressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PressImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateStatusCopyWithImpl<$Res, _$PressImpl>
    implements _$$PressImplCopyWith<$Res> {
  __$$PressImplCopyWithImpl(
      _$PressImpl _value, $Res Function(_$PressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PressImpl implements _Press {
  const _$PressImpl();

  @override
  String toString() {
    return 'MinigameSetupStateStatus.press()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() poll,
    required TResult Function() press,
    required TResult Function() perform,
    required TResult Function() reset,
  }) {
    return press();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? poll,
    TResult? Function()? press,
    TResult? Function()? perform,
    TResult? Function()? reset,
  }) {
    return press?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? poll,
    TResult Function()? press,
    TResult Function()? perform,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (press != null) {
      return press();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Poll value) poll,
    required TResult Function(_Press value) press,
    required TResult Function(_Perform value) perform,
    required TResult Function(_Reset value) reset,
  }) {
    return press(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Poll value)? poll,
    TResult? Function(_Press value)? press,
    TResult? Function(_Perform value)? perform,
    TResult? Function(_Reset value)? reset,
  }) {
    return press?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Poll value)? poll,
    TResult Function(_Press value)? press,
    TResult Function(_Perform value)? perform,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (press != null) {
      return press(this);
    }
    return orElse();
  }
}

abstract class _Press implements MinigameSetupStateStatus {
  const factory _Press() = _$PressImpl;
}

/// @nodoc
abstract class _$$PerformImplCopyWith<$Res> {
  factory _$$PerformImplCopyWith(
          _$PerformImpl value, $Res Function(_$PerformImpl) then) =
      __$$PerformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PerformImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateStatusCopyWithImpl<$Res, _$PerformImpl>
    implements _$$PerformImplCopyWith<$Res> {
  __$$PerformImplCopyWithImpl(
      _$PerformImpl _value, $Res Function(_$PerformImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PerformImpl implements _Perform {
  const _$PerformImpl();

  @override
  String toString() {
    return 'MinigameSetupStateStatus.perform()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PerformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() poll,
    required TResult Function() press,
    required TResult Function() perform,
    required TResult Function() reset,
  }) {
    return perform();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? poll,
    TResult? Function()? press,
    TResult? Function()? perform,
    TResult? Function()? reset,
  }) {
    return perform?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? poll,
    TResult Function()? press,
    TResult Function()? perform,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Poll value) poll,
    required TResult Function(_Press value) press,
    required TResult Function(_Perform value) perform,
    required TResult Function(_Reset value) reset,
  }) {
    return perform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Poll value)? poll,
    TResult? Function(_Press value)? press,
    TResult? Function(_Perform value)? perform,
    TResult? Function(_Reset value)? reset,
  }) {
    return perform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Poll value)? poll,
    TResult Function(_Press value)? press,
    TResult Function(_Perform value)? perform,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform(this);
    }
    return orElse();
  }
}

abstract class _Perform implements MinigameSetupStateStatus {
  const factory _Perform() = _$PerformImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateStatusCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'MinigameSetupStateStatus.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() poll,
    required TResult Function() press,
    required TResult Function() perform,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? poll,
    TResult? Function()? press,
    TResult? Function()? perform,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? poll,
    TResult Function()? press,
    TResult Function()? perform,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Poll value) poll,
    required TResult Function(_Press value) press,
    required TResult Function(_Perform value) perform,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Poll value)? poll,
    TResult? Function(_Press value)? press,
    TResult? Function(_Perform value)? perform,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Poll value)? poll,
    TResult Function(_Press value)? press,
    TResult Function(_Perform value)? perform,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements MinigameSetupStateStatus {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$MinigameSetupStateData {
  PollFirebase? get poll => throw _privateConstructorUsedError;
  PerformFirebase? get perform => throw _privateConstructorUsedError;
  PressedFirebase? get press => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinigameSetupStateDataCopyWith<MinigameSetupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinigameSetupStateDataCopyWith<$Res> {
  factory $MinigameSetupStateDataCopyWith(MinigameSetupStateData value,
          $Res Function(MinigameSetupStateData) then) =
      _$MinigameSetupStateDataCopyWithImpl<$Res, MinigameSetupStateData>;
  @useResult
  $Res call(
      {PollFirebase? poll, PerformFirebase? perform, PressedFirebase? press});
}

/// @nodoc
class _$MinigameSetupStateDataCopyWithImpl<$Res,
        $Val extends MinigameSetupStateData>
    implements $MinigameSetupStateDataCopyWith<$Res> {
  _$MinigameSetupStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poll = freezed,
    Object? perform = freezed,
    Object? press = freezed,
  }) {
    return _then(_value.copyWith(
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as PollFirebase?,
      perform: freezed == perform
          ? _value.perform
          : perform // ignore: cast_nullable_to_non_nullable
              as PerformFirebase?,
      press: freezed == press
          ? _value.press
          : press // ignore: cast_nullable_to_non_nullable
              as PressedFirebase?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinigameSetupStateDataImplCopyWith<$Res>
    implements $MinigameSetupStateDataCopyWith<$Res> {
  factory _$$MinigameSetupStateDataImplCopyWith(
          _$MinigameSetupStateDataImpl value,
          $Res Function(_$MinigameSetupStateDataImpl) then) =
      __$$MinigameSetupStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PollFirebase? poll, PerformFirebase? perform, PressedFirebase? press});
}

/// @nodoc
class __$$MinigameSetupStateDataImplCopyWithImpl<$Res>
    extends _$MinigameSetupStateDataCopyWithImpl<$Res,
        _$MinigameSetupStateDataImpl>
    implements _$$MinigameSetupStateDataImplCopyWith<$Res> {
  __$$MinigameSetupStateDataImplCopyWithImpl(
      _$MinigameSetupStateDataImpl _value,
      $Res Function(_$MinigameSetupStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poll = freezed,
    Object? perform = freezed,
    Object? press = freezed,
  }) {
    return _then(_$MinigameSetupStateDataImpl(
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as PollFirebase?,
      perform: freezed == perform
          ? _value.perform
          : perform // ignore: cast_nullable_to_non_nullable
              as PerformFirebase?,
      press: freezed == press
          ? _value.press
          : press // ignore: cast_nullable_to_non_nullable
              as PressedFirebase?,
    ));
  }
}

/// @nodoc

class _$MinigameSetupStateDataImpl implements _MinigameSetupStateData {
  const _$MinigameSetupStateDataImpl({this.poll, this.perform, this.press});

  @override
  final PollFirebase? poll;
  @override
  final PerformFirebase? perform;
  @override
  final PressedFirebase? press;

  @override
  String toString() {
    return 'MinigameSetupStateData(poll: $poll, perform: $perform, press: $press)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinigameSetupStateDataImpl &&
            (identical(other.poll, poll) || other.poll == poll) &&
            (identical(other.perform, perform) || other.perform == perform) &&
            (identical(other.press, press) || other.press == press));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poll, perform, press);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinigameSetupStateDataImplCopyWith<_$MinigameSetupStateDataImpl>
      get copyWith => __$$MinigameSetupStateDataImplCopyWithImpl<
          _$MinigameSetupStateDataImpl>(this, _$identity);
}

abstract class _MinigameSetupStateData implements MinigameSetupStateData {
  const factory _MinigameSetupStateData(
      {final PollFirebase? poll,
      final PerformFirebase? perform,
      final PressedFirebase? press}) = _$MinigameSetupStateDataImpl;

  @override
  PollFirebase? get poll;
  @override
  PerformFirebase? get perform;
  @override
  PressedFirebase? get press;
  @override
  @JsonKey(ignore: true)
  _$$MinigameSetupStateDataImplCopyWith<_$MinigameSetupStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
