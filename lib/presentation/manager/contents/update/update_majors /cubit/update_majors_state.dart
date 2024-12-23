import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';

part 'update_majors_state.freezed.dart';

@freezed
class UpdateMajorsBuildable with _$UpdateMajorsBuildable {
  const factory UpdateMajorsBuildable({
    @Default(false) bool loading,
    @Default(false) bool uploadLoading,
    @Default(false) bool isLaptopFileOpen,
    @Default(false) bool error,
    @Default(MajorsModel()) MajorsModel majors,
  }) = _UpdateMajorsBuildable;
}

@freezed
class UpdateMajorsListenable with _$UpdateMajorsListenable {
  const factory UpdateMajorsListenable() = _UpdateMajorsListenable;
}
