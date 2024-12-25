import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_e_books_state.freezed.dart';

@freezed
class UpdateEBooksBuildable with _$UpdateEBooksBuildable {
  const factory UpdateEBooksBuildable({
    @Default(false) bool loading,
    @Default(false) bool uploadFileLoading,
    @Default(false) bool error,
  }) = _UpdateEBooksBuildable;
}

@freezed
class UpdateEBooksListenable with _$UpdateEBooksListenable {
  const factory UpdateEBooksListenable() = _UpdateEBooksListenable;
}
