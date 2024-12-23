// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'majors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MajorsModelImpl _$$MajorsModelImplFromJson(Map<String, dynamic> json) =>
    _$MajorsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$MajorsModelImplToJson(_$MajorsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photo': instance.photo,
    };
