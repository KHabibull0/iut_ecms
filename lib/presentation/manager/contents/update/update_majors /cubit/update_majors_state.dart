import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_majors_state.freezed.dart';

@freezed
class UpdateMajorsBuildable with _$UpdateMajorsBuildable {
  const factory UpdateMajorsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UpdateMajorsBuildable;
}

@freezed
class UpdateMajorsListenable with _$UpdateMajorsListenable {
  const factory UpdateMajorsListenable() = _UpdateMajorsListenable;
}
