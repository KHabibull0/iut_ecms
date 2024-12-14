// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterBuildableCopyWith<RegisterBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBuildableCopyWith<$Res> {
  factory $RegisterBuildableCopyWith(
          RegisterBuildable value, $Res Function(RegisterBuildable) then) =
      _$RegisterBuildableCopyWithImpl<$Res, RegisterBuildable>;
  @useResult
  $Res call({bool loading, bool error, int currentIndex});
}

/// @nodoc
class _$RegisterBuildableCopyWithImpl<$Res, $Val extends RegisterBuildable>
    implements $RegisterBuildableCopyWith<$Res> {
  _$RegisterBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? currentIndex = null,
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
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBuildableImplCopyWith<$Res>
    implements $RegisterBuildableCopyWith<$Res> {
  factory _$$RegisterBuildableImplCopyWith(_$RegisterBuildableImpl value,
          $Res Function(_$RegisterBuildableImpl) then) =
      __$$RegisterBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error, int currentIndex});
}

/// @nodoc
class __$$RegisterBuildableImplCopyWithImpl<$Res>
    extends _$RegisterBuildableCopyWithImpl<$Res, _$RegisterBuildableImpl>
    implements _$$RegisterBuildableImplCopyWith<$Res> {
  __$$RegisterBuildableImplCopyWithImpl(_$RegisterBuildableImpl _value,
      $Res Function(_$RegisterBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? currentIndex = null,
  }) {
    return _then(_$RegisterBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterBuildableImpl implements _RegisterBuildable {
  const _$RegisterBuildableImpl(
      {this.loading = false, this.error = false, this.currentIndex = 0});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'RegisterBuildable(loading: $loading, error: $error, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, currentIndex);

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBuildableImplCopyWith<_$RegisterBuildableImpl> get copyWith =>
      __$$RegisterBuildableImplCopyWithImpl<_$RegisterBuildableImpl>(
          this, _$identity);
}

abstract class _RegisterBuildable implements RegisterBuildable {
  const factory _RegisterBuildable(
      {final bool loading,
      final bool error,
      final int currentIndex}) = _$RegisterBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  int get currentIndex;

  /// Create a copy of RegisterBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterBuildableImplCopyWith<_$RegisterBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterListenable {}

/// @nodoc
abstract class $RegisterListenableCopyWith<$Res> {
  factory $RegisterListenableCopyWith(
          RegisterListenable value, $Res Function(RegisterListenable) then) =
      _$RegisterListenableCopyWithImpl<$Res, RegisterListenable>;
}

/// @nodoc
class _$RegisterListenableCopyWithImpl<$Res, $Val extends RegisterListenable>
    implements $RegisterListenableCopyWith<$Res> {
  _$RegisterListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterListenableImplCopyWith<$Res> {
  factory _$$RegisterListenableImplCopyWith(_$RegisterListenableImpl value,
          $Res Function(_$RegisterListenableImpl) then) =
      __$$RegisterListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterListenableImplCopyWithImpl<$Res>
    extends _$RegisterListenableCopyWithImpl<$Res, _$RegisterListenableImpl>
    implements _$$RegisterListenableImplCopyWith<$Res> {
  __$$RegisterListenableImplCopyWithImpl(_$RegisterListenableImpl _value,
      $Res Function(_$RegisterListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterListenableImpl implements _RegisterListenable {
  const _$RegisterListenableImpl();

  @override
  String toString() {
    return 'RegisterListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RegisterListenable implements RegisterListenable {
  const factory _RegisterListenable() = _$RegisterListenableImpl;
}
