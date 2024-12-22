import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_subjects_state.freezed.dart';

@freezed
class UpdateSubjectsBuildable with _$UpdateSubjectsBuildable {
  const factory UpdateSubjectsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UpdateSubjectsBuildable;
}

@freezed
class UpdateSubjectsListenable with _$UpdateSubjectsListenable {
  const factory UpdateSubjectsListenable() = _UpdateSubjectsListenable;
}
