// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManagerHomeBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  ManagerDashboardModel get dashboardStatistics =>
      throw _privateConstructorUsedError;

  /// Create a copy of ManagerHomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerHomeBuildableCopyWith<ManagerHomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerHomeBuildableCopyWith<$Res> {
  factory $ManagerHomeBuildableCopyWith(ManagerHomeBuildable value,
          $Res Function(ManagerHomeBuildable) then) =
      _$ManagerHomeBuildableCopyWithImpl<$Res, ManagerHomeBuildable>;
  @useResult
  $Res call(
      {bool loading, bool error, ManagerDashboardModel dashboardStatistics});

  $ManagerDashboardModelCopyWith<$Res> get dashboardStatistics;
}

/// @nodoc
class _$ManagerHomeBuildableCopyWithImpl<$Res,
        $Val extends ManagerHomeBuildable>
    implements $ManagerHomeBuildableCopyWith<$Res> {
  _$ManagerHomeBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerHomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? dashboardStatistics = null,
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
      dashboardStatistics: null == dashboardStatistics
          ? _value.dashboardStatistics
          : dashboardStatistics // ignore: cast_nullable_to_non_nullable
              as ManagerDashboardModel,
    ) as $Val);
  }

  /// Create a copy of ManagerHomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManagerDashboardModelCopyWith<$Res> get dashboardStatistics {
    return $ManagerDashboardModelCopyWith<$Res>(_value.dashboardStatistics,
        (value) {
      return _then(_value.copyWith(dashboardStatistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManagerHomeBuildableImplCopyWith<$Res>
    implements $ManagerHomeBuildableCopyWith<$Res> {
  factory _$$ManagerHomeBuildableImplCopyWith(_$ManagerHomeBuildableImpl value,
          $Res Function(_$ManagerHomeBuildableImpl) then) =
      __$$ManagerHomeBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, bool error, ManagerDashboardModel dashboardStatistics});

  @override
  $ManagerDashboardModelCopyWith<$Res> get dashboardStatistics;
}

/// @nodoc
class __$$ManagerHomeBuildableImplCopyWithImpl<$Res>
    extends _$ManagerHomeBuildableCopyWithImpl<$Res, _$ManagerHomeBuildableImpl>
    implements _$$ManagerHomeBuildableImplCopyWith<$Res> {
  __$$ManagerHomeBuildableImplCopyWithImpl(_$ManagerHomeBuildableImpl _value,
      $Res Function(_$ManagerHomeBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerHomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? dashboardStatistics = null,
  }) {
    return _then(_$ManagerHomeBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      dashboardStatistics: null == dashboardStatistics
          ? _value.dashboardStatistics
          : dashboardStatistics // ignore: cast_nullable_to_non_nullable
              as ManagerDashboardModel,
    ));
  }
}

/// @nodoc

class _$ManagerHomeBuildableImpl implements _ManagerHomeBuildable {
  const _$ManagerHomeBuildableImpl(
      {this.loading = false,
      this.error = false,
      this.dashboardStatistics = const ManagerDashboardModel()});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final ManagerDashboardModel dashboardStatistics;

  @override
  String toString() {
    return 'ManagerHomeBuildable(loading: $loading, error: $error, dashboardStatistics: $dashboardStatistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerHomeBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.dashboardStatistics, dashboardStatistics) ||
                other.dashboardStatistics == dashboardStatistics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, error, dashboardStatistics);

  /// Create a copy of ManagerHomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerHomeBuildableImplCopyWith<_$ManagerHomeBuildableImpl>
      get copyWith =>
          __$$ManagerHomeBuildableImplCopyWithImpl<_$ManagerHomeBuildableImpl>(
              this, _$identity);
}

abstract class _ManagerHomeBuildable implements ManagerHomeBuildable {
  const factory _ManagerHomeBuildable(
          {final bool loading,
          final bool error,
          final ManagerDashboardModel dashboardStatistics}) =
      _$ManagerHomeBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  ManagerDashboardModel get dashboardStatistics;

  /// Create a copy of ManagerHomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerHomeBuildableImplCopyWith<_$ManagerHomeBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManagerHomeListenable {}

/// @nodoc
abstract class $ManagerHomeListenableCopyWith<$Res> {
  factory $ManagerHomeListenableCopyWith(ManagerHomeListenable value,
          $Res Function(ManagerHomeListenable) then) =
      _$ManagerHomeListenableCopyWithImpl<$Res, ManagerHomeListenable>;
}

/// @nodoc
class _$ManagerHomeListenableCopyWithImpl<$Res,
        $Val extends ManagerHomeListenable>
    implements $ManagerHomeListenableCopyWith<$Res> {
  _$ManagerHomeListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerHomeListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ManagerHomeListenableImplCopyWith<$Res> {
  factory _$$ManagerHomeListenableImplCopyWith(
          _$ManagerHomeListenableImpl value,
          $Res Function(_$ManagerHomeListenableImpl) then) =
      __$$ManagerHomeListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManagerHomeListenableImplCopyWithImpl<$Res>
    extends _$ManagerHomeListenableCopyWithImpl<$Res,
        _$ManagerHomeListenableImpl>
    implements _$$ManagerHomeListenableImplCopyWith<$Res> {
  __$$ManagerHomeListenableImplCopyWithImpl(_$ManagerHomeListenableImpl _value,
      $Res Function(_$ManagerHomeListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerHomeListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ManagerHomeListenableImpl implements _ManagerHomeListenable {
  const _$ManagerHomeListenableImpl();

  @override
  String toString() {
    return 'ManagerHomeListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerHomeListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ManagerHomeListenable implements ManagerHomeListenable {
  const factory _ManagerHomeListenable() = _$ManagerHomeListenableImpl;
}
