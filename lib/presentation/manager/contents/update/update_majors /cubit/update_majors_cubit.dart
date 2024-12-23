import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_state.dart';

@injectable
class UpdateMajorsCubit extends BaseCubit<UpdateMajorsBuildable, UpdateMajorsListenable> {
  UpdateMajorsCubit(this._managerDashboardRepository) : super(const UpdateMajorsBuildable());

  final ManagerDashboardRepository _managerDashboardRepository;
  final dio = Dio();

  Future<String> addMajor() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result = await _managerDashboardRepository.addMajor(major: buildable.majors);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    return result;
  }

  void updateMajorModel({
    String? name,
    String? photoName,
    String? photo,
  }) {
    final updatedMajor = buildable.majors.copyWith(
      name: name ?? buildable.majors.name,
      photoName: photoName ?? buildable.majors.photoName,
      photo: photo ?? buildable.majors.photo,
    );

    build((buildable) => buildable.copyWith(majors: updatedMajor));
  }

  String checkMajorFields() {
    if (buildable.majors.name == null ||
        buildable.majors.photo == null ||
        buildable.majors.photoName == null) {
      return 'Please fill all fields';
    }
    return '';
  }
}
