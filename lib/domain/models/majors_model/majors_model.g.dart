// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'majors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MajorsModelImpl _$$MajorsModelImplFromJson(Map<String, dynamic> json) =>
    _$MajorsModelImpl(
      majorId: (json['majorId'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MajorsModelImplToJson(_$MajorsModelImpl instance) =>
    <String, dynamic>{
      'majorId': instance.majorId,
      'name': instance.name,
    };
