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
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get photoName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? photoName,
      String? photo});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photoName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoName: freezed == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? photoName,
      String? photo});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photoName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$MajorsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoName: freezed == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MajorsModelImpl implements _MajorsModel {
  const _$MajorsModelImpl(
      {this.id, this.name, this.description, this.photoName, this.photo});

  factory _$MajorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MajorsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? photoName;
  @override
  final String? photo;

  @override
  String toString() {
    return 'MajorsModel(id: $id, name: $name, description: $description, photoName: $photoName, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MajorsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoName, photoName) ||
                other.photoName == photoName) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, photoName, photo);

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
  const factory _MajorsModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? photoName,
      final String? photo}) = _$MajorsModelImpl;

  factory _MajorsModel.fromJson(Map<String, dynamic> json) =
      _$MajorsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get photoName;
  @override
  String? get photo;

  /// Create a copy of MajorsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MajorsModelImplCopyWith<_$MajorsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
