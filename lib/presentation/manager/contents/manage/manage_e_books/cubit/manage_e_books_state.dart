import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/e_book_model/e_book_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';

part 'manage_e_books_state.freezed.dart';

@freezed
class ManageEBooksBuildable with _$ManageEBooksBuildable {
  const factory ManageEBooksBuildable({
    @Default(false) bool loading,
    @Default(false) bool deleteLoading,
    @Default(false) bool error,
    @Default(0) int majorId,
    @Default(0) int subjectId,
    @Default('') String selectedMajor,
    @Default('') String selectedSubject,
    @Default([]) List<MajorsModel> majorsList,
    @Default([]) List<SubjectsModel> subjectsList,
    @Default([]) List<EBookModel> booksList,
    @Default({}) Map<String, bool> hoverStates,
  }) = _ManageEBooksBuildable;
}

@freezed
class ManageEBooksListenable with _$ManageEBooksListenable {
  const factory ManageEBooksListenable() = _ManageEBooksListenable;
}
