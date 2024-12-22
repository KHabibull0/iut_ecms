import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_majors_state.freezed.dart';

@freezed
class UserMajorsBuildable with _$UserMajorsBuildable {
  const factory UserMajorsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserMajorsBuildable;
}

@freezed
class UserMajorsListenable with _$UserMajorsListenable {
  const factory UserMajorsListenable() = _UserMajorsListenable;
}
