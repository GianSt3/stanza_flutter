// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreChatState {
  FirestoreChatStateStatus get status => throw _privateConstructorUsedError;
  Chat get chat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreChatStateCopyWith<FirestoreChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatStateCopyWith<$Res> {
  factory $FirestoreChatStateCopyWith(
          FirestoreChatState value, $Res Function(FirestoreChatState) then) =
      _$FirestoreChatStateCopyWithImpl<$Res, FirestoreChatState>;
  @useResult
  $Res call({FirestoreChatStateStatus status, Chat chat});

  $FirestoreChatStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FirestoreChatStateCopyWithImpl<$Res, $Val extends FirestoreChatState>
    implements $FirestoreChatStateCopyWith<$Res> {
  _$FirestoreChatStateCopyWithImpl(this._value, this._then);

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
              as FirestoreChatStateStatus,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatStateStatusCopyWith<$Res> get status {
    return $FirestoreChatStateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreChatStateImplCopyWith<$Res>
    implements $FirestoreChatStateCopyWith<$Res> {
  factory _$$FirestoreChatStateImplCopyWith(_$FirestoreChatStateImpl value,
          $Res Function(_$FirestoreChatStateImpl) then) =
      __$$FirestoreChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FirestoreChatStateStatus status, Chat chat});

  @override
  $FirestoreChatStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$FirestoreChatStateImplCopyWithImpl<$Res>
    extends _$FirestoreChatStateCopyWithImpl<$Res, _$FirestoreChatStateImpl>
    implements _$$FirestoreChatStateImplCopyWith<$Res> {
  __$$FirestoreChatStateImplCopyWithImpl(_$FirestoreChatStateImpl _value,
      $Res Function(_$FirestoreChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chat = null,
  }) {
    return _then(_$FirestoreChatStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FirestoreChatStateStatus,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }
}

/// @nodoc

class _$FirestoreChatStateImpl extends _FirestoreChatState {
  const _$FirestoreChatStateImpl(
      {required this.status, this.chat = const Chat(messages: <Message>[])})
      : super._();

  @override
  final FirestoreChatStateStatus status;
  @override
  @JsonKey()
  final Chat chat;

  @override
  String toString() {
    return 'FirestoreChatState(status: $status, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatStateImplCopyWith<_$FirestoreChatStateImpl> get copyWith =>
      __$$FirestoreChatStateImplCopyWithImpl<_$FirestoreChatStateImpl>(
          this, _$identity);
}

abstract class _FirestoreChatState extends FirestoreChatState {
  const factory _FirestoreChatState(
      {required final FirestoreChatStateStatus status,
      final Chat chat}) = _$FirestoreChatStateImpl;
  const _FirestoreChatState._() : super._();

  @override
  FirestoreChatStateStatus get status;
  @override
  Chat get chat;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreChatStateImplCopyWith<_$FirestoreChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirestoreChatStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function() deleting,
    required TResult Function() deleted,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function()? deleting,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatStateStatusCopyWith<$Res> {
  factory $FirestoreChatStateStatusCopyWith(FirestoreChatStateStatus value,
          $Res Function(FirestoreChatStateStatus) then) =
      _$FirestoreChatStateStatusCopyWithImpl<$Res, FirestoreChatStateStatus>;
}

/// @nodoc
class _$FirestoreChatStateStatusCopyWithImpl<$Res,
        $Val extends FirestoreChatStateStatus>
    implements $FirestoreChatStateStatusCopyWith<$Res> {
  _$FirestoreChatStateStatusCopyWithImpl(this._value, this._then);

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
    extends _$FirestoreChatStateStatusCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FirestoreChatStateStatus.initial()';
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
    required TResult Function() reading,
    required TResult Function() deleting,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function()? deleting,
    TResult Function()? deleted,
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
    required TResult Function(_Reading value) reading,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends FirestoreChatStateStatus {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ReadingImplCopyWith<$Res> {
  factory _$$ReadingImplCopyWith(
          _$ReadingImpl value, $Res Function(_$ReadingImpl) then) =
      __$$ReadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadingImplCopyWithImpl<$Res>
    extends _$FirestoreChatStateStatusCopyWithImpl<$Res, _$ReadingImpl>
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
    return 'FirestoreChatStateStatus.reading()';
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
    required TResult Function() reading,
    required TResult Function() deleting,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return reading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return reading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function()? deleting,
    TResult Function()? deleted,
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
    required TResult Function(_Reading value) reading,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return reading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return reading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(this);
    }
    return orElse();
  }
}

abstract class _Reading extends FirestoreChatStateStatus {
  const factory _Reading() = _$ReadingImpl;
  const _Reading._() : super._();
}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(
          _$DeletingImpl value, $Res Function(_$DeletingImpl) then) =
      __$$DeletingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res>
    extends _$FirestoreChatStateStatusCopyWithImpl<$Res, _$DeletingImpl>
    implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(
      _$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletingImpl extends _Deleting {
  const _$DeletingImpl() : super._();

  @override
  String toString() {
    return 'FirestoreChatStateStatus.deleting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function() deleting,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function()? deleting,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting extends FirestoreChatStateStatus {
  const factory _Deleting() = _$DeletingImpl;
  const _Deleting._() : super._();
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$FirestoreChatStateStatusCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedImpl extends _Deleted {
  const _$DeletedImpl() : super._();

  @override
  String toString() {
    return 'FirestoreChatStateStatus.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function() deleting,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function()? deleting,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted extends FirestoreChatStateStatus {
  const factory _Deleted() = _$DeletedImpl;
  const _Deleted._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FirestoreChatStateStatusCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'FirestoreChatStateStatus.error()';
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
    required TResult Function() reading,
    required TResult Function() deleting,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function()? deleting,
    TResult Function()? deleted,
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
    required TResult Function(_Reading value) reading,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends FirestoreChatStateStatus {
  const factory _Error() = _$ErrorImpl;
  const _Error._() : super._();
}
