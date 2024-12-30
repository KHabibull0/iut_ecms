import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/dashboard/cubit/manager_home_state.dart';

@injectable
class ManagerHomeCubit extends BaseCubit<ManagerHomeBuildable, ManagerHomeListenable> {
  ManagerHomeCubit(this._managerDashboardRepository) : super(const ManagerHomeBuildable()) {
    getDashboardStatistics();
  }

  final ManagerDashboardRepository _managerDashboardRepository;

  Future<String> getDashboardStatistics() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result = await _managerDashboardRepository.getDashboardStatistics();
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) =>
            buildable.copyWith(loading: false, error: false, dashboardStatistics: data));
        return '';
      },
    );
  }
}
