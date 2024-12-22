// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseModelImpl _$$BaseResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseModelImpl(
      action: json['action'] as String?,
      status: json['status'] as String?,
      role: json['role'] as String?,
      data: json['data'] as String?,
      entity: json['entity'] as String?,
    );

Map<String, dynamic> _$$BaseResponseModelImplToJson(
        _$BaseResponseModelImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'status': instance.status,
      'role': instance.role,
      'data': instance.data,
      'entity': instance.entity,
    };
