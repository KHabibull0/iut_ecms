// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSettingsBuildable {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  Language? get language => throw _privateConstructorUsedError;

  /// Create a copy of UserSettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSettingsBuildableCopyWith<UserSettingsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsBuildableCopyWith<$Res> {
  factory $UserSettingsBuildableCopyWith(UserSettingsBuildable value,
          $Res Function(UserSettingsBuildable) then) =
      _$UserSettingsBuildableCopyWithImpl<$Res, UserSettingsBuildable>;
  @useResult
  $Res call({bool isLoading, bool error, Language? language});

  $LanguageCopyWith<$Res>? get language;
}

/// @nodoc
class _$UserSettingsBuildableCopyWithImpl<$Res,
        $Val extends UserSettingsBuildable>
    implements $UserSettingsBuildableCopyWith<$Res> {
  _$UserSettingsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
    ) as $Val);
  }

  /// Create a copy of UserSettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $LanguageCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSettingsBuildableImplCopyWith<$Res>
    implements $UserSettingsBuildableCopyWith<$Res> {
  factory _$$UserSettingsBuildableImplCopyWith(
          _$UserSettingsBuildableImpl value,
          $Res Function(_$UserSettingsBuildableImpl) then) =
      __$$UserSettingsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool error, Language? language});

  @override
  $LanguageCopyWith<$Res>? get language;
}

/// @nodoc
class __$$UserSettingsBuildableImplCopyWithImpl<$Res>
    extends _$UserSettingsBuildableCopyWithImpl<$Res,
        _$UserSettingsBuildableImpl>
    implements _$$UserSettingsBuildableImplCopyWith<$Res> {
  __$$UserSettingsBuildableImplCopyWithImpl(_$UserSettingsBuildableImpl _value,
      $Res Function(_$UserSettingsBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? language = freezed,
  }) {
    return _then(_$UserSettingsBuildableImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
    ));
  }
}

/// @nodoc

class _$UserSettingsBuildableImpl implements _UserSettingsBuildable {
  const _$UserSettingsBuildableImpl(
      {this.isLoading = false,
      this.error = false,
      this.language = const Language(code: 'en_US', name: 'English')});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final Language? language;

  @override
  String toString() {
    return 'UserSettingsBuildable(isLoading: $isLoading, error: $error, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsBuildableImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, language);

  /// Create a copy of UserSettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsBuildableImplCopyWith<_$UserSettingsBuildableImpl>
      get copyWith => __$$UserSettingsBuildableImplCopyWithImpl<
          _$UserSettingsBuildableImpl>(this, _$identity);
}

abstract class _UserSettingsBuildable implements UserSettingsBuildable {
  const factory _UserSettingsBuildable(
      {final bool isLoading,
      final bool error,
      final Language? language}) = _$UserSettingsBuildableImpl;

  @override
  bool get isLoading;
  @override
  bool get error;
  @override
  Language? get language;

  /// Create a copy of UserSettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSettingsBuildableImplCopyWith<_$UserSettingsBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSettingsListenable {}

/// @nodoc
abstract class $UserSettingsListenableCopyWith<$Res> {
  factory $UserSettingsListenableCopyWith(UserSettingsListenable value,
          $Res Function(UserSettingsListenable) then) =
      _$UserSettingsListenableCopyWithImpl<$Res, UserSettingsListenable>;
}

/// @nodoc
class _$UserSettingsListenableCopyWithImpl<$Res,
        $Val extends UserSettingsListenable>
    implements $UserSettingsListenableCopyWith<$Res> {
  _$UserSettingsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettingsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserSettingsListenableImplCopyWith<$Res> {
  factory _$$UserSettingsListenableImplCopyWith(
          _$UserSettingsListenableImpl value,
          $Res Function(_$UserSettingsListenableImpl) then) =
      __$$UserSettingsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSettingsListenableImplCopyWithImpl<$Res>
    extends _$UserSettingsListenableCopyWithImpl<$Res,
        _$UserSettingsListenableImpl>
    implements _$$UserSettingsListenableImplCopyWith<$Res> {
  __$$UserSettingsListenableImplCopyWithImpl(
      _$UserSettingsListenableImpl _value,
      $Res Function(_$UserSettingsListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSettingsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserSettingsListenableImpl implements _UserSettingsListenable {
  const _$UserSettingsListenableImpl();

  @override
  String toString() {
    return 'UserSettingsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UserSettingsListenable implements UserSettingsListenable {
  const factory _UserSettingsListenable() = _$UserSettingsListenableImpl;
}
