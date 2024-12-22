// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseModel _$BaseResponseModelFromJson(Map<String, dynamic> json) {
  return _BaseResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseModel {
  String? get action => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  String? get entity => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseModelCopyWith<BaseResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<$Res> {
  factory $BaseResponseModelCopyWith(
          BaseResponseModel value, $Res Function(BaseResponseModel) then) =
      _$BaseResponseModelCopyWithImpl<$Res, BaseResponseModel>;
  @useResult
  $Res call(
      {String? action,
      String? status,
      String? role,
      String? data,
      String? entity});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<$Res, $Val extends BaseResponseModel>
    implements $BaseResponseModelCopyWith<$Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? status = freezed,
    Object? role = freezed,
    Object? data = freezed,
    Object? entity = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseModelImplCopyWith<$Res>
    implements $BaseResponseModelCopyWith<$Res> {
  factory _$$BaseResponseModelImplCopyWith(_$BaseResponseModelImpl value,
          $Res Function(_$BaseResponseModelImpl) then) =
      __$$BaseResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? action,
      String? status,
      String? role,
      String? data,
      String? entity});
}

/// @nodoc
class __$$BaseResponseModelImplCopyWithImpl<$Res>
    extends _$BaseResponseModelCopyWithImpl<$Res, _$BaseResponseModelImpl>
    implements _$$BaseResponseModelImplCopyWith<$Res> {
  __$$BaseResponseModelImplCopyWithImpl(_$BaseResponseModelImpl _value,
      $Res Function(_$BaseResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? status = freezed,
    Object? role = freezed,
    Object? data = freezed,
    Object? entity = freezed,
  }) {
    return _then(_$BaseResponseModelImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseModelImpl implements _BaseResponseModel {
  const _$BaseResponseModelImpl(
      {this.action, this.status, this.role, this.data, this.entity});

  factory _$BaseResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseModelImplFromJson(json);

  @override
  final String? action;
  @override
  final String? status;
  @override
  final String? role;
  @override
  final String? data;
  @override
  final String? entity;

  @override
  String toString() {
    return 'BaseResponseModel(action: $action, status: $status, role: $role, data: $data, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, action, status, role, data, entity);

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseModelImplCopyWith<_$BaseResponseModelImpl> get copyWith =>
      __$$BaseResponseModelImplCopyWithImpl<_$BaseResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseModel implements BaseResponseModel {
  const factory _BaseResponseModel(
      {final String? action,
      final String? status,
      final String? role,
      final String? data,
      final String? entity}) = _$BaseResponseModelImpl;

  factory _BaseResponseModel.fromJson(Map<String, dynamic> json) =
      _$BaseResponseModelImpl.fromJson;

  @override
  String? get action;
  @override
  String? get status;
  @override
  String? get role;
  @override
  String? get data;
  @override
  String? get entity;

  /// Create a copy of BaseResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseModelImplCopyWith<_$BaseResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
