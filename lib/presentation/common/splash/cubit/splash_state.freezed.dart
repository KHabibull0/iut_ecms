// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get isServerStarted => throw _privateConstructorUsedError;

  /// Create a copy of SplashBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashBuildableCopyWith<SplashBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashBuildableCopyWith<$Res> {
  factory $SplashBuildableCopyWith(
          SplashBuildable value, $Res Function(SplashBuildable) then) =
      _$SplashBuildableCopyWithImpl<$Res, SplashBuildable>;
  @useResult
  $Res call({bool loading, bool error, bool isServerStarted});
}

/// @nodoc
class _$SplashBuildableCopyWithImpl<$Res, $Val extends SplashBuildable>
    implements $SplashBuildableCopyWith<$Res> {
  _$SplashBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? isServerStarted = null,
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
      isServerStarted: null == isServerStarted
          ? _value.isServerStarted
          : isServerStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashBuildableImplCopyWith<$Res>
    implements $SplashBuildableCopyWith<$Res> {
  factory _$$SplashBuildableImplCopyWith(_$SplashBuildableImpl value,
          $Res Function(_$SplashBuildableImpl) then) =
      __$$SplashBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error, bool isServerStarted});
}

/// @nodoc
class __$$SplashBuildableImplCopyWithImpl<$Res>
    extends _$SplashBuildableCopyWithImpl<$Res, _$SplashBuildableImpl>
    implements _$$SplashBuildableImplCopyWith<$Res> {
  __$$SplashBuildableImplCopyWithImpl(
      _$SplashBuildableImpl _value, $Res Function(_$SplashBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? isServerStarted = null,
  }) {
    return _then(_$SplashBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isServerStarted: null == isServerStarted
          ? _value.isServerStarted
          : isServerStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SplashBuildableImpl implements _SplashBuildable {
  const _$SplashBuildableImpl(
      {this.loading = false, this.error = false, this.isServerStarted = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isServerStarted;

  @override
  String toString() {
    return 'SplashBuildable(loading: $loading, error: $error, isServerStarted: $isServerStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isServerStarted, isServerStarted) ||
                other.isServerStarted == isServerStarted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, isServerStarted);

  /// Create a copy of SplashBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashBuildableImplCopyWith<_$SplashBuildableImpl> get copyWith =>
      __$$SplashBuildableImplCopyWithImpl<_$SplashBuildableImpl>(
          this, _$identity);
}

abstract class _SplashBuildable implements SplashBuildable {
  const factory _SplashBuildable(
      {final bool loading,
      final bool error,
      final bool isServerStarted}) = _$SplashBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get isServerStarted;

  /// Create a copy of SplashBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashBuildableImplCopyWith<_$SplashBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashListenable {
  bool get isServerStarted => throw _privateConstructorUsedError;

  /// Create a copy of SplashListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashListenableCopyWith<SplashListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashListenableCopyWith<$Res> {
  factory $SplashListenableCopyWith(
          SplashListenable value, $Res Function(SplashListenable) then) =
      _$SplashListenableCopyWithImpl<$Res, SplashListenable>;
  @useResult
  $Res call({bool isServerStarted});
}

/// @nodoc
class _$SplashListenableCopyWithImpl<$Res, $Val extends SplashListenable>
    implements $SplashListenableCopyWith<$Res> {
  _$SplashListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isServerStarted = null,
  }) {
    return _then(_value.copyWith(
      isServerStarted: null == isServerStarted
          ? _value.isServerStarted
          : isServerStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashListenableImplCopyWith<$Res>
    implements $SplashListenableCopyWith<$Res> {
  factory _$$SplashListenableImplCopyWith(_$SplashListenableImpl value,
          $Res Function(_$SplashListenableImpl) then) =
      __$$SplashListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isServerStarted});
}

/// @nodoc
class __$$SplashListenableImplCopyWithImpl<$Res>
    extends _$SplashListenableCopyWithImpl<$Res, _$SplashListenableImpl>
    implements _$$SplashListenableImplCopyWith<$Res> {
  __$$SplashListenableImplCopyWithImpl(_$SplashListenableImpl _value,
      $Res Function(_$SplashListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isServerStarted = null,
  }) {
    return _then(_$SplashListenableImpl(
      isServerStarted: null == isServerStarted
          ? _value.isServerStarted
          : isServerStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SplashListenableImpl implements _SplashListenable {
  const _$SplashListenableImpl({this.isServerStarted = false});

  @override
  @JsonKey()
  final bool isServerStarted;

  @override
  String toString() {
    return 'SplashListenable(isServerStarted: $isServerStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashListenableImpl &&
            (identical(other.isServerStarted, isServerStarted) ||
                other.isServerStarted == isServerStarted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isServerStarted);

  /// Create a copy of SplashListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashListenableImplCopyWith<_$SplashListenableImpl> get copyWith =>
      __$$SplashListenableImplCopyWithImpl<_$SplashListenableImpl>(
          this, _$identity);
}

abstract class _SplashListenable implements SplashListenable {
  const factory _SplashListenable({final bool isServerStarted}) =
      _$SplashListenableImpl;

  @override
  bool get isServerStarted;

  /// Create a copy of SplashListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashListenableImplCopyWith<_$SplashListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
