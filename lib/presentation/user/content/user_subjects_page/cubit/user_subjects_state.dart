import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_subjects_state.freezed.dart';

@freezed
class UserSubjectsBuildable with _$UserSubjectsBuildable {
  const factory UserSubjectsBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserSubjectsBuildable;
}

@freezed
class UserSubjectsListenable with _$UserSubjectsListenable {
  const factory UserSubjectsListenable() = _UserSubjectsListenable;
}
