import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_subjects/cubit/manage_subjects_state.dart';

@injectable
class ManageSubjectsCubit extends BaseCubit<ManageSubjectsBuildable, ManageSubjectsListenable> {
  ManageSubjectsCubit(this._managerDashboardRepository) : super(const ManageSubjectsBuildable()) {
    getMajors();
  }

  final ManagerDashboardRepository _managerDashboardRepository;

  void updateHovering(String key, bool isHovering) {
    build((buildable) {
      final newHoverStates = {...buildable.hoverStates, key: isHovering};
      return buildable.copyWith(hoverStates: newHoverStates);
    });
  }

  void updateCurrentMajorId(int currentMajorId) {
    build((buildable) => buildable.copyWith(currentMajorId: currentMajorId));
  }

  void updateSelectedDropDownValue(String selectedValue) {
    build((buildable) => buildable.copyWith(selectedMajor: selectedValue));
  }

  Future<String> deleteSubject({required int subjectId}) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final subjects = SubjectsModel(subjectId: subjectId);
    final result = await _managerDashboardRepository.deleteSubject(subjects: subjects);
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
        build((buildable) => buildable.copyWith(loading: false, error: false, majorsList: data));
        return '';
      },
    );
  }

  Future<String> getSubjects({required String name, required int majorId}) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final majors = MajorsModel(name: name, majorId: majorId);
    final result = await _managerDashboardRepository.getSubjects(major: majors);
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) => buildable.copyWith(loading: false, error: false, subjectsList: data));
        return '';
      },
    );
  }
}
