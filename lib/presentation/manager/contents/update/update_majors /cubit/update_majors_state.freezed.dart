// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_majors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateMajorsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get uploadLoading => throw _privateConstructorUsedError;
  bool get isLaptopFileOpen => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  MajorsModel get majors => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMajorsBuildableCopyWith<UpdateMajorsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMajorsBuildableCopyWith<$Res> {
  factory $UpdateMajorsBuildableCopyWith(UpdateMajorsBuildable value,
          $Res Function(UpdateMajorsBuildable) then) =
      _$UpdateMajorsBuildableCopyWithImpl<$Res, UpdateMajorsBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool uploadLoading,
      bool isLaptopFileOpen,
      bool error,
      MajorsModel majors});

  $MajorsModelCopyWith<$Res> get majors;
}

/// @nodoc
class _$UpdateMajorsBuildableCopyWithImpl<$Res,
        $Val extends UpdateMajorsBuildable>
    implements $UpdateMajorsBuildableCopyWith<$Res> {
  _$UpdateMajorsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? uploadLoading = null,
    Object? isLaptopFileOpen = null,
    Object? error = null,
    Object? majors = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadLoading: null == uploadLoading
          ? _value.uploadLoading
          : uploadLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLaptopFileOpen: null == isLaptopFileOpen
          ? _value.isLaptopFileOpen
          : isLaptopFileOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      majors: null == majors
          ? _value.majors
          : majors // ignore: cast_nullable_to_non_nullable
              as MajorsModel,
    ) as $Val);
  }

  /// Create a copy of UpdateMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MajorsModelCopyWith<$Res> get majors {
    return $MajorsModelCopyWith<$Res>(_value.majors, (value) {
      return _then(_value.copyWith(majors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateMajorsBuildableImplCopyWith<$Res>
    implements $UpdateMajorsBuildableCopyWith<$Res> {
  factory _$$UpdateMajorsBuildableImplCopyWith(
          _$UpdateMajorsBuildableImpl value,
          $Res Function(_$UpdateMajorsBuildableImpl) then) =
      __$$UpdateMajorsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool uploadLoading,
      bool isLaptopFileOpen,
      bool error,
      MajorsModel majors});

  @override
  $MajorsModelCopyWith<$Res> get majors;
}

/// @nodoc
class __$$UpdateMajorsBuildableImplCopyWithImpl<$Res>
    extends _$UpdateMajorsBuildableCopyWithImpl<$Res,
        _$UpdateMajorsBuildableImpl>
    implements _$$UpdateMajorsBuildableImplCopyWith<$Res> {
  __$$UpdateMajorsBuildableImplCopyWithImpl(_$UpdateMajorsBuildableImpl _value,
      $Res Function(_$UpdateMajorsBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? uploadLoading = null,
    Object? isLaptopFileOpen = null,
    Object? error = null,
    Object? majors = null,
  }) {
    return _then(_$UpdateMajorsBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadLoading: null == uploadLoading
          ? _value.uploadLoading
          : uploadLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLaptopFileOpen: null == isLaptopFileOpen
          ? _value.isLaptopFileOpen
          : isLaptopFileOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      majors: null == majors
          ? _value.majors
          : majors // ignore: cast_nullable_to_non_nullable
              as MajorsModel,
    ));
  }
}

/// @nodoc

class _$UpdateMajorsBuildableImpl implements _UpdateMajorsBuildable {
  const _$UpdateMajorsBuildableImpl(
      {this.loading = false,
      this.uploadLoading = false,
      this.isLaptopFileOpen = false,
      this.error = false,
      this.majors = const MajorsModel()});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool uploadLoading;
  @override
  @JsonKey()
  final bool isLaptopFileOpen;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final MajorsModel majors;

  @override
  String toString() {
    return 'UpdateMajorsBuildable(loading: $loading, uploadLoading: $uploadLoading, isLaptopFileOpen: $isLaptopFileOpen, error: $error, majors: $majors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMajorsBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.uploadLoading, uploadLoading) ||
                other.uploadLoading == uploadLoading) &&
            (identical(other.isLaptopFileOpen, isLaptopFileOpen) ||
                other.isLaptopFileOpen == isLaptopFileOpen) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.majors, majors) || other.majors == majors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, uploadLoading, isLaptopFileOpen, error, majors);

  /// Create a copy of UpdateMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMajorsBuildableImplCopyWith<_$UpdateMajorsBuildableImpl>
      get copyWith => __$$UpdateMajorsBuildableImplCopyWithImpl<
          _$UpdateMajorsBuildableImpl>(this, _$identity);
}

abstract class _UpdateMajorsBuildable implements UpdateMajorsBuildable {
  const factory _UpdateMajorsBuildable(
      {final bool loading,
      final bool uploadLoading,
      final bool isLaptopFileOpen,
      final bool error,
      final MajorsModel majors}) = _$UpdateMajorsBuildableImpl;

  @override
  bool get loading;
  @override
  bool get uploadLoading;
  @override
  bool get isLaptopFileOpen;
  @override
  bool get error;
  @override
  MajorsModel get majors;

  /// Create a copy of UpdateMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMajorsBuildableImplCopyWith<_$UpdateMajorsBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateMajorsListenable {}

/// @nodoc
abstract class $UpdateMajorsListenableCopyWith<$Res> {
  factory $UpdateMajorsListenableCopyWith(UpdateMajorsListenable value,
          $Res Function(UpdateMajorsListenable) then) =
      _$UpdateMajorsListenableCopyWithImpl<$Res, UpdateMajorsListenable>;
}

/// @nodoc
class _$UpdateMajorsListenableCopyWithImpl<$Res,
        $Val extends UpdateMajorsListenable>
    implements $UpdateMajorsListenableCopyWith<$Res> {
  _$UpdateMajorsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMajorsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateMajorsListenableImplCopyWith<$Res> {
  factory _$$UpdateMajorsListenableImplCopyWith(
          _$UpdateMajorsListenableImpl value,
          $Res Function(_$UpdateMajorsListenableImpl) then) =
      __$$UpdateMajorsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateMajorsListenableImplCopyWithImpl<$Res>
    extends _$UpdateMajorsListenableCopyWithImpl<$Res,
        _$UpdateMajorsListenableImpl>
    implements _$$UpdateMajorsListenableImplCopyWith<$Res> {
  __$$UpdateMajorsListenableImplCopyWithImpl(
      _$UpdateMajorsListenableImpl _value,
      $Res Function(_$UpdateMajorsListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMajorsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateMajorsListenableImpl implements _UpdateMajorsListenable {
  const _$UpdateMajorsListenableImpl();

  @override
  String toString() {
    return 'UpdateMajorsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMajorsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateMajorsListenable implements UpdateMajorsListenable {
  const factory _UpdateMajorsListenable() = _$UpdateMajorsListenableImpl;
}
