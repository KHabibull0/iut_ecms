import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/dashboard_model/manager_dashboard_model.dart';

part 'manager_home_state.freezed.dart';

@freezed
class ManagerHomeBuildable with _$ManagerHomeBuildable {
  const factory ManagerHomeBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(ManagerDashboardModel()) ManagerDashboardModel dashboardStatistics,
  }) = _ManagerHomeBuildable;
}

@freezed
class ManagerHomeListenable with _$ManagerHomeListenable {
  const factory ManagerHomeListenable() = _ManagerHomeListenable;
}
