import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';

part 'manage_majors_state.freezed.dart';

@freezed
class ManageMajorsBuildable with _$ManageMajorsBuildable {
  const factory ManageMajorsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default({}) Map<String, bool> hoverStates,
    @Default([]) List<MajorsModel> majors,
  }) = _ManageMajorsBuildable;
}

@freezed
class ManageMajorsListenable with _$ManageMajorsListenable {
  const factory ManageMajorsListenable() = _ManageMajorsListenable;
}
