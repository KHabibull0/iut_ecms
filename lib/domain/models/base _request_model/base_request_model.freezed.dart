// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseRequestModel _$BaseRequestModelFromJson(Map<String, dynamic> json) {
  return _BaseRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BaseRequestModel {
  String? get entity => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this BaseRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseRequestModelCopyWith<BaseRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRequestModelCopyWith<$Res> {
  factory $BaseRequestModelCopyWith(
          BaseRequestModel value, $Res Function(BaseRequestModel) then) =
      _$BaseRequestModelCopyWithImpl<$Res, BaseRequestModel>;
  @useResult
  $Res call({String? entity, String? action, Object? data, String? token});
}

/// @nodoc
class _$BaseRequestModelCopyWithImpl<$Res, $Val extends BaseRequestModel>
    implements $BaseRequestModelCopyWith<$Res> {
  _$BaseRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? action = freezed,
    Object? data = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data ? _value.data : data,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRequestModelImplCopyWith<$Res>
    implements $BaseRequestModelCopyWith<$Res> {
  factory _$$BaseRequestModelImplCopyWith(_$BaseRequestModelImpl value,
          $Res Function(_$BaseRequestModelImpl) then) =
      __$$BaseRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? entity, String? action, Object? data, String? token});
}

/// @nodoc
class __$$BaseRequestModelImplCopyWithImpl<$Res>
    extends _$BaseRequestModelCopyWithImpl<$Res, _$BaseRequestModelImpl>
    implements _$$BaseRequestModelImplCopyWith<$Res> {
  __$$BaseRequestModelImplCopyWithImpl(_$BaseRequestModelImpl _value,
      $Res Function(_$BaseRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? action = freezed,
    Object? data = freezed,
    Object? token = freezed,
  }) {
    return _then(_$BaseRequestModelImpl(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data ? _value.data : data,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseRequestModelImpl implements _BaseRequestModel {
  const _$BaseRequestModelImpl(
      {this.entity, this.action, this.data, this.token});

  factory _$BaseRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseRequestModelImplFromJson(json);

  @override
  final String? entity;
  @override
  final String? action;
  @override
  final Object? data;
  @override
  final String? token;

  @override
  String toString() {
    return 'BaseRequestModel(entity: $entity, action: $action, data: $data, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRequestModelImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entity, action,
      const DeepCollectionEquality().hash(data), token);

  /// Create a copy of BaseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRequestModelImplCopyWith<_$BaseRequestModelImpl> get copyWith =>
      __$$BaseRequestModelImplCopyWithImpl<_$BaseRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseRequestModelImplToJson(
      this,
    );
  }
}

abstract class _BaseRequestModel implements BaseRequestModel {
  const factory _BaseRequestModel(
      {final String? entity,
      final String? action,
      final Object? data,
      final String? token}) = _$BaseRequestModelImpl;

  factory _BaseRequestModel.fromJson(Map<String, dynamic> json) =
      _$BaseRequestModelImpl.fromJson;

  @override
  String? get entity;
  @override
  String? get action;
  @override
  Object? get data;
  @override
  String? get token;

  /// Create a copy of BaseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseRequestModelImplCopyWith<_$BaseRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
