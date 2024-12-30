import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/e_letter_model/e_letter_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_content_repository.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_state.dart';

@injectable
class ManageELettersCubit extends BaseCubit<ManageELettersBuildable, ManageELettersListenable> {
  ManageELettersCubit(this._managerDashboardRepository, this._managerContentRepository)
      : super(const ManageELettersBuildable()) {
    getMajors();
  }
  final ManagerDashboardRepository _managerDashboardRepository;
  final ManagerContentRepository _managerContentRepository;

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

  Future<String> getELetters(int subjectId) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final ELetterModel eLetterModel = ELetterModel(subjectId: subjectId);
    final result = await _managerContentRepository.getELetters(eLetterModel: eLetterModel);
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) => buildable.copyWith(loading: false, error: false, eLettersList: data));
        return '';
      },
    );
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

  Future<String> deleteELetters(int eLetterId) async {
    updateDeleting('$eLetterId', true);
    final ELetterModel eLetterModel = ELetterModel(eLetterId: eLetterId);
    final result = await _managerContentRepository.deleteELetters(eLetterModel: eLetterModel);
    updateDeleting('$eLetterId', false);
    return result;
  }

  void updateDeleting(String key, bool isHovering) {
    build((buildable) {
      final newDeletingStates = {...buildable.deletingStates, key: isHovering};
      return buildable.copyWith(deletingStates: newDeletingStates);
    });
  }

  void updateHovering(String key, bool isHovering) {
    build((buildable) {
      final newHoverStates = {...buildable.hoverStates, key: isHovering};
      return buildable.copyWith(hoverStates: newHoverStates);
    });
  }

  void updateCurrentMajorId(int currentMajorId) {
    build((buildable) => buildable.copyWith(majorId: currentMajorId));
  }

  void updateCurrentSubjectId(int currentSubjectId) {
    build((buildable) => buildable.copyWith(subjectId: currentSubjectId));
  }

  void updateSelectedMajor(String selectedValue) {
    build((buildable) => buildable.copyWith(selectedMajor: selectedValue));
  }

  void updateSelectedSubject(String selectedValue) {
    build((buildable) => buildable.copyWith(selectedSubject: selectedValue));
  }
}
