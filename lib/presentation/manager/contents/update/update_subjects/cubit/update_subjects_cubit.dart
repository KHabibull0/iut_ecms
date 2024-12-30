import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_subjects/cubit/update_subjects_state.dart';

@injectable
class UpdateSubjectsCubit extends BaseCubit<UpdateSubjectsBuildable, UpdateSubjectsListenable> {
  UpdateSubjectsCubit(this._managerDashboardRepository) : super(const UpdateSubjectsBuildable());

  final ManagerDashboardRepository _managerDashboardRepository;

  Future<String> updateSubject(int subjectId, String name) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final subject = SubjectsModel(name: name, subjectId: subjectId);
    final result = await _managerDashboardRepository.updateSubject(subjects: subject);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    return result;
  }

  Future<String> addSubjects(int majorId, String subjectName) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result =
        await _managerDashboardRepository.addSubject(name: subjectName, majorId: majorId);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    return result;
  }
}
