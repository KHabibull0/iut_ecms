// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_e_letters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateELettersBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get uploadFileLoading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get selectedELetterType => throw _privateConstructorUsedError;

  /// Create a copy of UpdateELettersBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateELettersBuildableCopyWith<UpdateELettersBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateELettersBuildableCopyWith<$Res> {
  factory $UpdateELettersBuildableCopyWith(UpdateELettersBuildable value,
          $Res Function(UpdateELettersBuildable) then) =
      _$UpdateELettersBuildableCopyWithImpl<$Res, UpdateELettersBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool uploadFileLoading,
      bool error,
      String selectedELetterType});
}

/// @nodoc
class _$UpdateELettersBuildableCopyWithImpl<$Res,
        $Val extends UpdateELettersBuildable>
    implements $UpdateELettersBuildableCopyWith<$Res> {
  _$UpdateELettersBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateELettersBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? uploadFileLoading = null,
    Object? error = null,
    Object? selectedELetterType = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileLoading: null == uploadFileLoading
          ? _value.uploadFileLoading
          : uploadFileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedELetterType: null == selectedELetterType
          ? _value.selectedELetterType
          : selectedELetterType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateELettersBuildableImplCopyWith<$Res>
    implements $UpdateELettersBuildableCopyWith<$Res> {
  factory _$$UpdateELettersBuildableImplCopyWith(
          _$UpdateELettersBuildableImpl value,
          $Res Function(_$UpdateELettersBuildableImpl) then) =
      __$$UpdateELettersBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool uploadFileLoading,
      bool error,
      String selectedELetterType});
}

/// @nodoc
class __$$UpdateELettersBuildableImplCopyWithImpl<$Res>
    extends _$UpdateELettersBuildableCopyWithImpl<$Res,
        _$UpdateELettersBuildableImpl>
    implements _$$UpdateELettersBuildableImplCopyWith<$Res> {
  __$$UpdateELettersBuildableImplCopyWithImpl(
      _$UpdateELettersBuildableImpl _value,
      $Res Function(_$UpdateELettersBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateELettersBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? uploadFileLoading = null,
    Object? error = null,
    Object? selectedELetterType = null,
  }) {
    return _then(_$UpdateELettersBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileLoading: null == uploadFileLoading
          ? _value.uploadFileLoading
          : uploadFileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedELetterType: null == selectedELetterType
          ? _value.selectedELetterType
          : selectedELetterType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateELettersBuildableImpl implements _UpdateELettersBuildable {
  const _$UpdateELettersBuildableImpl(
      {this.loading = false,
      this.uploadFileLoading = false,
      this.error = false,
      this.selectedELetterType = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool uploadFileLoading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final String selectedELetterType;

  @override
  String toString() {
    return 'UpdateELettersBuildable(loading: $loading, uploadFileLoading: $uploadFileLoading, error: $error, selectedELetterType: $selectedELetterType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateELettersBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.uploadFileLoading, uploadFileLoading) ||
                other.uploadFileLoading == uploadFileLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedELetterType, selectedELetterType) ||
                other.selectedELetterType == selectedELetterType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, uploadFileLoading, error, selectedELetterType);

  /// Create a copy of UpdateELettersBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateELettersBuildableImplCopyWith<_$UpdateELettersBuildableImpl>
      get copyWith => __$$UpdateELettersBuildableImplCopyWithImpl<
          _$UpdateELettersBuildableImpl>(this, _$identity);
}

abstract class _UpdateELettersBuildable implements UpdateELettersBuildable {
  const factory _UpdateELettersBuildable(
      {final bool loading,
      final bool uploadFileLoading,
      final bool error,
      final String selectedELetterType}) = _$UpdateELettersBuildableImpl;

  @override
  bool get loading;
  @override
  bool get uploadFileLoading;
  @override
  bool get error;
  @override
  String get selectedELetterType;

  /// Create a copy of UpdateELettersBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateELettersBuildableImplCopyWith<_$UpdateELettersBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateELettersListenable {}

/// @nodoc
abstract class $UpdateELettersListenableCopyWith<$Res> {
  factory $UpdateELettersListenableCopyWith(UpdateELettersListenable value,
          $Res Function(UpdateELettersListenable) then) =
      _$UpdateELettersListenableCopyWithImpl<$Res, UpdateELettersListenable>;
}

/// @nodoc
class _$UpdateELettersListenableCopyWithImpl<$Res,
        $Val extends UpdateELettersListenable>
    implements $UpdateELettersListenableCopyWith<$Res> {
  _$UpdateELettersListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateELettersListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateELettersListenableImplCopyWith<$Res> {
  factory _$$UpdateELettersListenableImplCopyWith(
          _$UpdateELettersListenableImpl value,
          $Res Function(_$UpdateELettersListenableImpl) then) =
      __$$UpdateELettersListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateELettersListenableImplCopyWithImpl<$Res>
    extends _$UpdateELettersListenableCopyWithImpl<$Res,
        _$UpdateELettersListenableImpl>
    implements _$$UpdateELettersListenableImplCopyWith<$Res> {
  __$$UpdateELettersListenableImplCopyWithImpl(
      _$UpdateELettersListenableImpl _value,
      $Res Function(_$UpdateELettersListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateELettersListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateELettersListenableImpl implements _UpdateELettersListenable {
  const _$UpdateELettersListenableImpl();

  @override
  String toString() {
    return 'UpdateELettersListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateELettersListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateELettersListenable implements UpdateELettersListenable {
  const factory _UpdateELettersListenable() = _$UpdateELettersListenableImpl;
}
