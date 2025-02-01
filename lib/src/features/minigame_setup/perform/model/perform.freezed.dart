// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Perform _$PerformFromJson(Map<String, dynamic> json) {
  return _Perform.fromJson(json);
}

/// @nodoc
mixin _$Perform {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool? get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformCopyWith<Perform> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformCopyWith<$Res> {
  factory $PerformCopyWith(Perform value, $Res Function(Perform) then) =
      _$PerformCopyWithImpl<$Res, Perform>;
  @useResult
  $Res call({String title, String content, bool? favorite});
}

/// @nodoc
class _$PerformCopyWithImpl<$Res, $Val extends Perform>
    implements $PerformCopyWith<$Res> {
  _$PerformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformImplCopyWith<$Res> implements $PerformCopyWith<$Res> {
  factory _$$PerformImplCopyWith(
          _$PerformImpl value, $Res Function(_$PerformImpl) then) =
      __$$PerformImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, bool? favorite});
}

/// @nodoc
class __$$PerformImplCopyWithImpl<$Res>
    extends _$PerformCopyWithImpl<$Res, _$PerformImpl>
    implements _$$PerformImplCopyWith<$Res> {
  __$$PerformImplCopyWithImpl(
      _$PerformImpl _value, $Res Function(_$PerformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? favorite = freezed,
  }) {
    return _then(_$PerformImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformImpl extends _Perform {
  const _$PerformImpl(
      {required this.title, required this.content, this.favorite})
      : super._();

  factory _$PerformImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final bool? favorite;

  @override
  String toString() {
    return 'Perform(title: $title, content: $content, favorite: $favorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, favorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformImplCopyWith<_$PerformImpl> get copyWith =>
      __$$PerformImplCopyWithImpl<_$PerformImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformImplToJson(
      this,
    );
  }
}

abstract class _Perform extends Perform {
  const factory _Perform(
      {required final String title,
      required final String content,
      final bool? favorite}) = _$PerformImpl;
  const _Perform._() : super._();

  factory _Perform.fromJson(Map<String, dynamic> json) = _$PerformImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  bool? get favorite;
  @override
  @JsonKey(ignore: true)
  _$$PerformImplCopyWith<_$PerformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
