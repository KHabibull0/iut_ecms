// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'majors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MajorsModel _$MajorsModelFromJson(Map<String, dynamic> json) {
  return _MajorsModel.fromJson(json);
}

/// @nodoc
mixin _$MajorsModel {
  int? get majorId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this MajorsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MajorsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MajorsModelCopyWith<MajorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorsModelCopyWith<$Res> {
  factory $MajorsModelCopyWith(
          MajorsModel value, $Res Function(MajorsModel) then) =
      _$MajorsModelCopyWithImpl<$Res, MajorsModel>;
  @useResult
  $Res call({int? majorId, String? name});
}

/// @nodoc
class _$MajorsModelCopyWithImpl<$Res, $Val extends MajorsModel>
    implements $MajorsModelCopyWith<$Res> {
  _$MajorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MajorsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? majorId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      majorId: freezed == majorId
          ? _value.majorId
          : majorId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MajorsModelImplCopyWith<$Res>
    implements $MajorsModelCopyWith<$Res> {
  factory _$$MajorsModelImplCopyWith(
          _$MajorsModelImpl value, $Res Function(_$MajorsModelImpl) then) =
      __$$MajorsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? majorId, String? name});
}

/// @nodoc
class __$$MajorsModelImplCopyWithImpl<$Res>
    extends _$MajorsModelCopyWithImpl<$Res, _$MajorsModelImpl>
    implements _$$MajorsModelImplCopyWith<$Res> {
  __$$MajorsModelImplCopyWithImpl(
      _$MajorsModelImpl _value, $Res Function(_$MajorsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MajorsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? majorId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MajorsModelImpl(
      majorId: freezed == majorId
          ? _value.majorId
          : majorId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MajorsModelImpl implements _MajorsModel {
  const _$MajorsModelImpl({this.majorId, this.name});

  factory _$MajorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MajorsModelImplFromJson(json);

  @override
  final int? majorId;
  @override
  final String? name;

  @override
  String toString() {
    return 'MajorsModel(majorId: $majorId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MajorsModelImpl &&
            (identical(other.majorId, majorId) || other.majorId == majorId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, majorId, name);

  /// Create a copy of MajorsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MajorsModelImplCopyWith<_$MajorsModelImpl> get copyWith =>
      __$$MajorsModelImplCopyWithImpl<_$MajorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MajorsModelImplToJson(
      this,
    );
  }
}

abstract class _MajorsModel implements MajorsModel {
  const factory _MajorsModel({final int? majorId, final String? name}) =
      _$MajorsModelImpl;

  factory _MajorsModel.fromJson(Map<String, dynamic> json) =
      _$MajorsModelImpl.fromJson;

  @override
  int? get majorId;
  @override
  String? get name;

  /// Create a copy of MajorsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MajorsModelImplCopyWith<_$MajorsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
