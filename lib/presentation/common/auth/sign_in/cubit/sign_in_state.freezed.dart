// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  LoginModel? get loginModel => throw _privateConstructorUsedError;

  /// Create a copy of SignInBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInBuildableCopyWith<SignInBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInBuildableCopyWith<$Res> {
  factory $SignInBuildableCopyWith(
          SignInBuildable value, $Res Function(SignInBuildable) then) =
      _$SignInBuildableCopyWithImpl<$Res, SignInBuildable>;
  @useResult
  $Res call({bool loading, bool error, LoginModel? loginModel});

  $LoginModelCopyWith<$Res>? get loginModel;
}

/// @nodoc
class _$SignInBuildableCopyWithImpl<$Res, $Val extends SignInBuildable>
    implements $SignInBuildableCopyWith<$Res> {
  _$SignInBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? loginModel = freezed,
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
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ) as $Val);
  }

  /// Create a copy of SignInBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginModelCopyWith<$Res>? get loginModel {
    if (_value.loginModel == null) {
      return null;
    }

    return $LoginModelCopyWith<$Res>(_value.loginModel!, (value) {
      return _then(_value.copyWith(loginModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInBuildableImplCopyWith<$Res>
    implements $SignInBuildableCopyWith<$Res> {
  factory _$$SignInBuildableImplCopyWith(_$SignInBuildableImpl value,
          $Res Function(_$SignInBuildableImpl) then) =
      __$$SignInBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error, LoginModel? loginModel});

  @override
  $LoginModelCopyWith<$Res>? get loginModel;
}

/// @nodoc
class __$$SignInBuildableImplCopyWithImpl<$Res>
    extends _$SignInBuildableCopyWithImpl<$Res, _$SignInBuildableImpl>
    implements _$$SignInBuildableImplCopyWith<$Res> {
  __$$SignInBuildableImplCopyWithImpl(
      _$SignInBuildableImpl _value, $Res Function(_$SignInBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? loginModel = freezed,
  }) {
    return _then(_$SignInBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }
}

/// @nodoc

class _$SignInBuildableImpl implements _SignInBuildable {
  const _$SignInBuildableImpl(
      {this.loading = false,
      this.error = false,
      this.loginModel = const LoginModel()});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final LoginModel? loginModel;

  @override
  String toString() {
    return 'SignInBuildable(loading: $loading, error: $error, loginModel: $loginModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, loginModel);

  /// Create a copy of SignInBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInBuildableImplCopyWith<_$SignInBuildableImpl> get copyWith =>
      __$$SignInBuildableImplCopyWithImpl<_$SignInBuildableImpl>(
          this, _$identity);
}

abstract class _SignInBuildable implements SignInBuildable {
  const factory _SignInBuildable(
      {final bool loading,
      final bool error,
      final LoginModel? loginModel}) = _$SignInBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  LoginModel? get loginModel;

  /// Create a copy of SignInBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInBuildableImplCopyWith<_$SignInBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInListenable {
  SignInEffect get effect => throw _privateConstructorUsedError;

  /// Create a copy of SignInListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInListenableCopyWith<SignInListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInListenableCopyWith<$Res> {
  factory $SignInListenableCopyWith(
          SignInListenable value, $Res Function(SignInListenable) then) =
      _$SignInListenableCopyWithImpl<$Res, SignInListenable>;
  @useResult
  $Res call({SignInEffect effect});
}

/// @nodoc
class _$SignInListenableCopyWithImpl<$Res, $Val extends SignInListenable>
    implements $SignInListenableCopyWith<$Res> {
  _$SignInListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as SignInEffect,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInListenableImplCopyWith<$Res>
    implements $SignInListenableCopyWith<$Res> {
  factory _$$SignInListenableImplCopyWith(_$SignInListenableImpl value,
          $Res Function(_$SignInListenableImpl) then) =
      __$$SignInListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInEffect effect});
}

/// @nodoc
class __$$SignInListenableImplCopyWithImpl<$Res>
    extends _$SignInListenableCopyWithImpl<$Res, _$SignInListenableImpl>
    implements _$$SignInListenableImplCopyWith<$Res> {
  __$$SignInListenableImplCopyWithImpl(_$SignInListenableImpl _value,
      $Res Function(_$SignInListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_$SignInListenableImpl(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as SignInEffect,
    ));
  }
}

/// @nodoc

class _$SignInListenableImpl implements _SignInListenable {
  const _$SignInListenableImpl({required this.effect});

  @override
  final SignInEffect effect;

  @override
  String toString() {
    return 'SignInListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  /// Create a copy of SignInListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInListenableImplCopyWith<_$SignInListenableImpl> get copyWith =>
      __$$SignInListenableImplCopyWithImpl<_$SignInListenableImpl>(
          this, _$identity);
}

abstract class _SignInListenable implements SignInListenable {
  const factory _SignInListenable({required final SignInEffect effect}) =
      _$SignInListenableImpl;

  @override
  SignInEffect get effect;

  /// Create a copy of SignInListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInListenableImplCopyWith<_$SignInListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
