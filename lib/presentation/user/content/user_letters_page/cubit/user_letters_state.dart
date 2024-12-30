import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_letters_state.freezed.dart';

@freezed
class UserLettersBuildable with _$UserLettersBuildable {
  const factory UserLettersBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserLettersBuildable;
}

@freezed
class UserLettersListenable with _$UserLettersListenable {
  const factory UserLettersListenable() = _UserLettersListenable;
}
