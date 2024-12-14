// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppBuildable {
  Locale? get locale => throw _privateConstructorUsedError;

  /// Create a copy of AppBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppBuildableCopyWith<AppBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBuildableCopyWith<$Res> {
  factory $AppBuildableCopyWith(
          AppBuildable value, $Res Function(AppBuildable) then) =
      _$AppBuildableCopyWithImpl<$Res, AppBuildable>;
  @useResult
  $Res call({Locale? locale});
}

/// @nodoc
class _$AppBuildableCopyWithImpl<$Res, $Val extends AppBuildable>
    implements $AppBuildableCopyWith<$Res> {
  _$AppBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppBuildableImplCopyWith<$Res>
    implements $AppBuildableCopyWith<$Res> {
  factory _$$AppBuildableImplCopyWith(
          _$AppBuildableImpl value, $Res Function(_$AppBuildableImpl) then) =
      __$$AppBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale? locale});
}

/// @nodoc
class __$$AppBuildableImplCopyWithImpl<$Res>
    extends _$AppBuildableCopyWithImpl<$Res, _$AppBuildableImpl>
    implements _$$AppBuildableImplCopyWith<$Res> {
  __$$AppBuildableImplCopyWithImpl(
      _$AppBuildableImpl _value, $Res Function(_$AppBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$AppBuildableImpl(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$AppBuildableImpl implements _AppBuildable {
  const _$AppBuildableImpl({this.locale});

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'AppBuildable(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBuildableImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of AppBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBuildableImplCopyWith<_$AppBuildableImpl> get copyWith =>
      __$$AppBuildableImplCopyWithImpl<_$AppBuildableImpl>(this, _$identity);
}

abstract class _AppBuildable implements AppBuildable {
  const factory _AppBuildable({final Locale? locale}) = _$AppBuildableImpl;

  @override
  Locale? get locale;

  /// Create a copy of AppBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppBuildableImplCopyWith<_$AppBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppListenable {}

/// @nodoc
abstract class $AppListenableCopyWith<$Res> {
  factory $AppListenableCopyWith(
          AppListenable value, $Res Function(AppListenable) then) =
      _$AppListenableCopyWithImpl<$Res, AppListenable>;
}

/// @nodoc
class _$AppListenableCopyWithImpl<$Res, $Val extends AppListenable>
    implements $AppListenableCopyWith<$Res> {
  _$AppListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppListenableImplCopyWith<$Res> {
  factory _$$AppListenableImplCopyWith(
          _$AppListenableImpl value, $Res Function(_$AppListenableImpl) then) =
      __$$AppListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppListenableImplCopyWithImpl<$Res>
    extends _$AppListenableCopyWithImpl<$Res, _$AppListenableImpl>
    implements _$$AppListenableImplCopyWith<$Res> {
  __$$AppListenableImplCopyWithImpl(
      _$AppListenableImpl _value, $Res Function(_$AppListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppListenableImpl implements _AppListenable {
  const _$AppListenableImpl();

  @override
  String toString() {
    return 'AppListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppListenable implements AppListenable {
  const factory _AppListenable() = _$AppListenableImpl;
}
