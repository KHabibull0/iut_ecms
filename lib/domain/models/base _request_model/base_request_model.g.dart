// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseRequestModelImpl _$$BaseRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseRequestModelImpl(
      entity: json['entity'] as String?,
      action: json['action'] as String?,
      data: json['data'],
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$BaseRequestModelImplToJson(
        _$BaseRequestModelImpl instance) =>
    <String, dynamic>{
      'entity': instance.entity,
      'action': instance.action,
      'data': instance.data,
      'token': instance.token,
    };
