import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';

part 'manage_subjects_state.freezed.dart';

@freezed
class ManageSubjectsBuildable with _$ManageSubjectsBuildable {
  const factory ManageSubjectsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default('Select Major') String selectedMajor,
    @Default(0) int currentMajorId,
    @Default([]) List<SubjectsModel> subjectsList,
    @Default([]) List<MajorsModel> majorsList,
    @Default({}) Map<String, bool> hoverStates,
  }) = _ManageSubjectsBuildable;
}

@freezed
class ManageSubjectsListenable with _$ManageSubjectsListenable {
  const factory ManageSubjectsListenable() = _ManageSubjectsListenable;
}
