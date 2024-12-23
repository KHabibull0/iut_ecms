// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainNavigationBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;

  /// Create a copy of MainNavigationBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainNavigationBuildableCopyWith<MainNavigationBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigationBuildableCopyWith<$Res> {
  factory $MainNavigationBuildableCopyWith(MainNavigationBuildable value,
          $Res Function(MainNavigationBuildable) then) =
      _$MainNavigationBuildableCopyWithImpl<$Res, MainNavigationBuildable>;
  @useResult
  $Res call({bool loading, bool error, int pageIndex, Locale? locale});
}

/// @nodoc
class _$MainNavigationBuildableCopyWithImpl<$Res,
        $Val extends MainNavigationBuildable>
    implements $MainNavigationBuildableCopyWith<$Res> {
  _$MainNavigationBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainNavigationBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? pageIndex = null,
    Object? locale = freezed,
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
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainNavigationBuildableImplCopyWith<$Res>
    implements $MainNavigationBuildableCopyWith<$Res> {
  factory _$$MainNavigationBuildableImplCopyWith(
          _$MainNavigationBuildableImpl value,
          $Res Function(_$MainNavigationBuildableImpl) then) =
      __$$MainNavigationBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error, int pageIndex, Locale? locale});
}

/// @nodoc
class __$$MainNavigationBuildableImplCopyWithImpl<$Res>
    extends _$MainNavigationBuildableCopyWithImpl<$Res,
        _$MainNavigationBuildableImpl>
    implements _$$MainNavigationBuildableImplCopyWith<$Res> {
  __$$MainNavigationBuildableImplCopyWithImpl(
      _$MainNavigationBuildableImpl _value,
      $Res Function(_$MainNavigationBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainNavigationBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? pageIndex = null,
    Object? locale = freezed,
  }) {
    return _then(_$MainNavigationBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$MainNavigationBuildableImpl implements _MainNavigationBuildable {
  const _$MainNavigationBuildableImpl(
      {this.loading = false,
      this.error = false,
      this.pageIndex = 0,
      this.locale});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final int pageIndex;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'MainNavigationBuildable(loading: $loading, error: $error, pageIndex: $pageIndex, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainNavigationBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, error, pageIndex, locale);

  /// Create a copy of MainNavigationBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainNavigationBuildableImplCopyWith<_$MainNavigationBuildableImpl>
      get copyWith => __$$MainNavigationBuildableImplCopyWithImpl<
          _$MainNavigationBuildableImpl>(this, _$identity);
}

abstract class _MainNavigationBuildable implements MainNavigationBuildable {
  const factory _MainNavigationBuildable(
      {final bool loading,
      final bool error,
      final int pageIndex,
      final Locale? locale}) = _$MainNavigationBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  int get pageIndex;
  @override
  Locale? get locale;

  /// Create a copy of MainNavigationBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainNavigationBuildableImplCopyWith<_$MainNavigationBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainNavigationListenable {}

/// @nodoc
abstract class $MainNavigationListenableCopyWith<$Res> {
  factory $MainNavigationListenableCopyWith(MainNavigationListenable value,
          $Res Function(MainNavigationListenable) then) =
      _$MainNavigationListenableCopyWithImpl<$Res, MainNavigationListenable>;
}

/// @nodoc
class _$MainNavigationListenableCopyWithImpl<$Res,
        $Val extends MainNavigationListenable>
    implements $MainNavigationListenableCopyWith<$Res> {
  _$MainNavigationListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainNavigationListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MainNavigationListenableImplCopyWith<$Res> {
  factory _$$MainNavigationListenableImplCopyWith(
          _$MainNavigationListenableImpl value,
          $Res Function(_$MainNavigationListenableImpl) then) =
      __$$MainNavigationListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainNavigationListenableImplCopyWithImpl<$Res>
    extends _$MainNavigationListenableCopyWithImpl<$Res,
        _$MainNavigationListenableImpl>
    implements _$$MainNavigationListenableImplCopyWith<$Res> {
  __$$MainNavigationListenableImplCopyWithImpl(
      _$MainNavigationListenableImpl _value,
      $Res Function(_$MainNavigationListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainNavigationListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainNavigationListenableImpl implements _MainNavigationListenable {
  const _$MainNavigationListenableImpl();

  @override
  String toString() {
    return 'MainNavigationListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainNavigationListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _MainNavigationListenable implements MainNavigationListenable {
  const factory _MainNavigationListenable() = _$MainNavigationListenableImpl;
}
