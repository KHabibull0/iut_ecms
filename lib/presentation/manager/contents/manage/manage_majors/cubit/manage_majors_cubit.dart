import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_majors/cubit/manage_majors_state.dart';

@injectable
class ManageMajorsCubit extends BaseCubit<ManageMajorsBuildable, ManageMajorsListenable> {
  ManageMajorsCubit(this._managerDashboardRepository) : super(const ManageMajorsBuildable()) {
    getMajors();
  }

  final ManagerDashboardRepository _managerDashboardRepository;

  void updateHovering(String key, bool isHovering) {
    build((buildable) {
      final newHoverStates = {...buildable.hoverStates, key: isHovering};
      return buildable.copyWith(hoverStates: newHoverStates);
    });
  }

  Future<String> deleteMajor(int majorId, int index) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final major = buildable.majors[index].copyWith(majorId: majorId, name: null);
    final result = await _managerDashboardRepository.deleteMajor(major: major);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    return result;
  }

  Future<String> getMajors() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result = await _managerDashboardRepository.getMajors();
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) => buildable.copyWith(loading: false, error: false, majors: data));
        return '';
      },
    );
  }
}
