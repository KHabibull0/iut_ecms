import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_e_letters_state.freezed.dart';

@freezed
class UpdateELettersBuildable with _$UpdateELettersBuildable {
  const factory UpdateELettersBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UpdateELettersBuildable;
}

@freezed
class UpdateELettersListenable with _$UpdateELettersListenable {
  const factory UpdateELettersListenable() = _UpdateELettersListenable;
}
