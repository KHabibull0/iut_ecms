import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_e_book_state.freezed.dart';

@freezed
class UserEBookBuildable with _$UserEBookBuildable {
  const factory UserEBookBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserEBookBuildable;
}

@freezed
class UserEBookListenable with _$UserEBookListenable {
  const factory UserEBookListenable() = _UserEBookListenable;
}
