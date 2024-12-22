import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_dashboard_model.freezed.dart';
part 'manager_dashboard_model.g.dart';

@freezed
class ManagerDashboardModel with _$ManagerDashboardModel {
  const factory ManagerDashboardModel({
    int? totalUsers,
    int? totalMajors,
    int? totalBooks,
    int? totalELetters,
    int? totalContentManagers,
    int? totalContents,
    int? totalArticleCount,
  }) = _ManagerDashboardModel;

  factory ManagerDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$ManagerDashboardModelFromJson(json);
}
