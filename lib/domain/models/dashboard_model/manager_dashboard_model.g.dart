// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManagerDashboardModelImpl _$$ManagerDashboardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ManagerDashboardModelImpl(
      totalUsers: (json['totalUsers'] as num?)?.toInt(),
      totalMajors: (json['totalMajors'] as num?)?.toInt(),
      totalBooks: (json['totalBooks'] as num?)?.toInt(),
      totalELetters: (json['totalELetters'] as num?)?.toInt(),
      totalContentManagers: (json['totalContentManagers'] as num?)?.toInt(),
      totalContents: (json['totalContents'] as num?)?.toInt(),
      totalArticleCount: (json['totalArticleCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ManagerDashboardModelImplToJson(
        _$ManagerDashboardModelImpl instance) =>
    <String, dynamic>{
      'totalUsers': instance.totalUsers,
      'totalMajors': instance.totalMajors,
      'totalBooks': instance.totalBooks,
      'totalELetters': instance.totalELetters,
      'totalContentManagers': instance.totalContentManagers,
      'totalContents': instance.totalContents,
      'totalArticleCount': instance.totalArticleCount,
    };
