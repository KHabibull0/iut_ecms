import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_e_letters_state.freezed.dart';

@freezed
class ManageELettersBuildable with _$ManageELettersBuildable {
  const factory ManageELettersBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _ManageELettersBuildable;
}

@freezed
class ManageELettersListenable with _$ManageELettersListenable {
  const factory ManageELettersListenable() = _ManageELettersListenable;
}
