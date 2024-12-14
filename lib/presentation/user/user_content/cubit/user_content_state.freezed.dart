// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserContentBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Create a copy of UserContentBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserContentBuildableCopyWith<UserContentBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserContentBuildableCopyWith<$Res> {
  factory $UserContentBuildableCopyWith(UserContentBuildable value,
          $Res Function(UserContentBuildable) then) =
      _$UserContentBuildableCopyWithImpl<$Res, UserContentBuildable>;
  @useResult
  $Res call({bool loading, bool error});
}

/// @nodoc
class _$UserContentBuildableCopyWithImpl<$Res,
        $Val extends UserContentBuildable>
    implements $UserContentBuildableCopyWith<$Res> {
  _$UserContentBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserContentBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserContentBuildableImplCopyWith<$Res>
    implements $UserContentBuildableCopyWith<$Res> {
  factory _$$UserContentBuildableImplCopyWith(_$UserContentBuildableImpl value,
          $Res Function(_$UserContentBuildableImpl) then) =
      __$$UserContentBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error});
}

/// @nodoc
class __$$UserContentBuildableImplCopyWithImpl<$Res>
    extends _$UserContentBuildableCopyWithImpl<$Res, _$UserContentBuildableImpl>
    implements _$$UserContentBuildableImplCopyWith<$Res> {
  __$$UserContentBuildableImplCopyWithImpl(_$UserContentBuildableImpl _value,
      $Res Function(_$UserContentBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserContentBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_$UserContentBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserContentBuildableImpl implements _UserContentBuildable {
  const _$UserContentBuildableImpl({this.loading = false, this.error = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'UserContentBuildable(loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserContentBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error);

  /// Create a copy of UserContentBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserContentBuildableImplCopyWith<_$UserContentBuildableImpl>
      get copyWith =>
          __$$UserContentBuildableImplCopyWithImpl<_$UserContentBuildableImpl>(
              this, _$identity);
}

abstract class _UserContentBuildable implements UserContentBuildable {
  const factory _UserContentBuildable({final bool loading, final bool error}) =
      _$UserContentBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;

  /// Create a copy of UserContentBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserContentBuildableImplCopyWith<_$UserContentBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserContentListenable {}

/// @nodoc
abstract class $UserContentListenableCopyWith<$Res> {
  factory $UserContentListenableCopyWith(UserContentListenable value,
          $Res Function(UserContentListenable) then) =
      _$UserContentListenableCopyWithImpl<$Res, UserContentListenable>;
}

/// @nodoc
class _$UserContentListenableCopyWithImpl<$Res,
        $Val extends UserContentListenable>
    implements $UserContentListenableCopyWith<$Res> {
  _$UserContentListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserContentListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserContentListenableImplCopyWith<$Res> {
  factory _$$UserContentListenableImplCopyWith(
          _$UserContentListenableImpl value,
          $Res Function(_$UserContentListenableImpl) then) =
      __$$UserContentListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserContentListenableImplCopyWithImpl<$Res>
    extends _$UserContentListenableCopyWithImpl<$Res,
        _$UserContentListenableImpl>
    implements _$$UserContentListenableImplCopyWith<$Res> {
  __$$UserContentListenableImplCopyWithImpl(_$UserContentListenableImpl _value,
      $Res Function(_$UserContentListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserContentListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserContentListenableImpl implements _UserContentListenable {
  const _$UserContentListenableImpl();

  @override
  String toString() {
    return 'UserContentListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserContentListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UserContentListenable implements UserContentListenable {
  const factory _UserContentListenable() = _$UserContentListenableImpl;
}
