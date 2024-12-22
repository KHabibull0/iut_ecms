import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_e_books_state.freezed.dart';

@freezed
class ManageEBooksBuildable with _$ManageEBooksBuildable {
  const factory ManageEBooksBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _ManageEBooksBuildable;
}

@freezed
class ManageEBooksListenable with _$ManageEBooksListenable {
  const factory ManageEBooksListenable() = _ManageEBooksListenable;
}
