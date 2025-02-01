// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PollListState _$PollListStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'loaded':
      return _Loaded.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PollListState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PollListState {
  List<Poll> get polls => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Poll> polls) initial,
    required TResult Function(List<Poll> polls) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Poll> polls)? initial,
    TResult? Function(List<Poll> polls)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Poll> polls)? initial,
    TResult Function(List<Poll> polls)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollListStateCopyWith<PollListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollListStateCopyWith<$Res> {
  factory $PollListStateCopyWith(
          PollListState value, $Res Function(PollListState) then) =
      _$PollListStateCopyWithImpl<$Res, PollListState>;
  @useResult
  $Res call({List<Poll> polls});
}

/// @nodoc
class _$PollListStateCopyWithImpl<$Res, $Val extends PollListState>
    implements $PollListStateCopyWith<$Res> {
  _$PollListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polls = null,
  }) {
    return _then(_value.copyWith(
      polls: null == polls
          ? _value.polls
          : polls // ignore: cast_nullable_to_non_nullable
              as List<Poll>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PollListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Poll> polls});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PollListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polls = null,
  }) {
    return _then(_$InitialImpl(
      null == polls
          ? _value._polls
          : polls // ignore: cast_nullable_to_non_nullable
              as List<Poll>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl implements _Initial {
  const _$InitialImpl(final List<Poll> polls, {final String? $type})
      : _polls = polls,
        $type = $type ?? 'initial';

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  final List<Poll> _polls;
  @override
  List<Poll> get polls {
    if (_polls is EqualUnmodifiableListView) return _polls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polls);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PollListState.initial(polls: $polls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._polls, _polls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_polls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Poll> polls) initial,
    required TResult Function(List<Poll> polls) loaded,
  }) {
    return initial(polls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Poll> polls)? initial,
    TResult? Function(List<Poll> polls)? loaded,
  }) {
    return initial?.call(polls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Poll> polls)? initial,
    TResult Function(List<Poll> polls)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(polls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial implements PollListState {
  const factory _Initial(final List<Poll> polls) = _$InitialImpl;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;

  @override
  List<Poll> get polls;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $PollListStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Poll> polls});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PollListStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polls = null,
  }) {
    return _then(_$LoadedImpl(
      null == polls
          ? _value._polls
          : polls // ignore: cast_nullable_to_non_nullable
              as List<Poll>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Poll> polls, {final String? $type})
      : _polls = polls,
        $type = $type ?? 'loaded';

  factory _$LoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadedImplFromJson(json);

  final List<Poll> _polls;
  @override
  List<Poll> get polls {
    if (_polls is EqualUnmodifiableListView) return _polls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polls);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PollListState.loaded(polls: $polls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._polls, _polls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_polls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Poll> polls) initial,
    required TResult Function(List<Poll> polls) loaded,
  }) {
    return loaded(polls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Poll> polls)? initial,
    TResult? Function(List<Poll> polls)? loaded,
  }) {
    return loaded?.call(polls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Poll> polls)? initial,
    TResult Function(List<Poll> polls)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(polls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedImplToJson(
      this,
    );
  }
}

abstract class _Loaded implements PollListState {
  const factory _Loaded(final List<Poll> polls) = _$LoadedImpl;

  factory _Loaded.fromJson(Map<String, dynamic> json) = _$LoadedImpl.fromJson;

  @override
  List<Poll> get polls;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
