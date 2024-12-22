// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_majors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageMajorsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  Map<String, bool> get hoverStates => throw _privateConstructorUsedError;
  List<MajorsModel> get majors => throw _privateConstructorUsedError;

  /// Create a copy of ManageMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageMajorsBuildableCopyWith<ManageMajorsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageMajorsBuildableCopyWith<$Res> {
  factory $ManageMajorsBuildableCopyWith(ManageMajorsBuildable value,
          $Res Function(ManageMajorsBuildable) then) =
      _$ManageMajorsBuildableCopyWithImpl<$Res, ManageMajorsBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      Map<String, bool> hoverStates,
      List<MajorsModel> majors});
}

/// @nodoc
class _$ManageMajorsBuildableCopyWithImpl<$Res,
        $Val extends ManageMajorsBuildable>
    implements $ManageMajorsBuildableCopyWith<$Res> {
  _$ManageMajorsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? hoverStates = null,
    Object? majors = null,
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
      hoverStates: null == hoverStates
          ? _value.hoverStates
          : hoverStates // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      majors: null == majors
          ? _value.majors
          : majors // ignore: cast_nullable_to_non_nullable
              as List<MajorsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageMajorsBuildableImplCopyWith<$Res>
    implements $ManageMajorsBuildableCopyWith<$Res> {
  factory _$$ManageMajorsBuildableImplCopyWith(
          _$ManageMajorsBuildableImpl value,
          $Res Function(_$ManageMajorsBuildableImpl) then) =
      __$$ManageMajorsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      Map<String, bool> hoverStates,
      List<MajorsModel> majors});
}

/// @nodoc
class __$$ManageMajorsBuildableImplCopyWithImpl<$Res>
    extends _$ManageMajorsBuildableCopyWithImpl<$Res,
        _$ManageMajorsBuildableImpl>
    implements _$$ManageMajorsBuildableImplCopyWith<$Res> {
  __$$ManageMajorsBuildableImplCopyWithImpl(_$ManageMajorsBuildableImpl _value,
      $Res Function(_$ManageMajorsBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? hoverStates = null,
    Object? majors = null,
  }) {
    return _then(_$ManageMajorsBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      hoverStates: null == hoverStates
          ? _value._hoverStates
          : hoverStates // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      majors: null == majors
          ? _value._majors
          : majors // ignore: cast_nullable_to_non_nullable
              as List<MajorsModel>,
    ));
  }
}

/// @nodoc

class _$ManageMajorsBuildableImpl implements _ManageMajorsBuildable {
  const _$ManageMajorsBuildableImpl(
      {this.loading = false,
      this.error = false,
      final Map<String, bool> hoverStates = const {},
      final List<MajorsModel> majors = const []})
      : _hoverStates = hoverStates,
        _majors = majors;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  final Map<String, bool> _hoverStates;
  @override
  @JsonKey()
  Map<String, bool> get hoverStates {
    if (_hoverStates is EqualUnmodifiableMapView) return _hoverStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hoverStates);
  }

  final List<MajorsModel> _majors;
  @override
  @JsonKey()
  List<MajorsModel> get majors {
    if (_majors is EqualUnmodifiableListView) return _majors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_majors);
  }

  @override
  String toString() {
    return 'ManageMajorsBuildable(loading: $loading, error: $error, hoverStates: $hoverStates, majors: $majors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageMajorsBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._hoverStates, _hoverStates) &&
            const DeepCollectionEquality().equals(other._majors, _majors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      const DeepCollectionEquality().hash(_hoverStates),
      const DeepCollectionEquality().hash(_majors));

  /// Create a copy of ManageMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageMajorsBuildableImplCopyWith<_$ManageMajorsBuildableImpl>
      get copyWith => __$$ManageMajorsBuildableImplCopyWithImpl<
          _$ManageMajorsBuildableImpl>(this, _$identity);
}

abstract class _ManageMajorsBuildable implements ManageMajorsBuildable {
  const factory _ManageMajorsBuildable(
      {final bool loading,
      final bool error,
      final Map<String, bool> hoverStates,
      final List<MajorsModel> majors}) = _$ManageMajorsBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  Map<String, bool> get hoverStates;
  @override
  List<MajorsModel> get majors;

  /// Create a copy of ManageMajorsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageMajorsBuildableImplCopyWith<_$ManageMajorsBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManageMajorsListenable {}

/// @nodoc
abstract class $ManageMajorsListenableCopyWith<$Res> {
  factory $ManageMajorsListenableCopyWith(ManageMajorsListenable value,
          $Res Function(ManageMajorsListenable) then) =
      _$ManageMajorsListenableCopyWithImpl<$Res, ManageMajorsListenable>;
}

/// @nodoc
class _$ManageMajorsListenableCopyWithImpl<$Res,
        $Val extends ManageMajorsListenable>
    implements $ManageMajorsListenableCopyWith<$Res> {
  _$ManageMajorsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageMajorsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ManageMajorsListenableImplCopyWith<$Res> {
  factory _$$ManageMajorsListenableImplCopyWith(
          _$ManageMajorsListenableImpl value,
          $Res Function(_$ManageMajorsListenableImpl) then) =
      __$$ManageMajorsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManageMajorsListenableImplCopyWithImpl<$Res>
    extends _$ManageMajorsListenableCopyWithImpl<$Res,
        _$ManageMajorsListenableImpl>
    implements _$$ManageMajorsListenableImplCopyWith<$Res> {
  __$$ManageMajorsListenableImplCopyWithImpl(
      _$ManageMajorsListenableImpl _value,
      $Res Function(_$ManageMajorsListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageMajorsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ManageMajorsListenableImpl implements _ManageMajorsListenable {
  const _$ManageMajorsListenableImpl();

  @override
  String toString() {
    return 'ManageMajorsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageMajorsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ManageMajorsListenable implements ManageMajorsListenable {
  const factory _ManageMajorsListenable() = _$ManageMajorsListenableImpl;
}
