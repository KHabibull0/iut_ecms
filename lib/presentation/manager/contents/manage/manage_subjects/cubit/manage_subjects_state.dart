import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_subjects_state.freezed.dart';

@freezed
class ManageSubjectsBuildable with _$ManageSubjectsBuildable {
  const factory ManageSubjectsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String selectedMajor,
    @Default([]) List<String> majorsList,
    @Default({}) Map<String, bool> hoverStates,
  }) = _ManageSubjectsBuildable;
}

@freezed
class ManageSubjectsListenable with _$ManageSubjectsListenable {
  const factory ManageSubjectsListenable() = _ManageSubjectsListenable;
}
