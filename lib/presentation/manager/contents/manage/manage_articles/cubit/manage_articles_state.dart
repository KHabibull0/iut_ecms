import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iut_ecms/domain/models/article_model/article_model.dart';
import 'package:iut_ecms/domain/models/e_letter_model/e_letter_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/models/subjects_model/subjects_model.dart';

part 'manage_articles_state.freezed.dart';

@freezed
class ManageArticlesBuildable with _$ManageArticlesBuildable {
  const factory ManageArticlesBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(0) int majorId,
    @Default(0) int subjectId,
    @Default('') String selectedMajor,
    @Default('') String selectedSubject,
    @Default([]) List<MajorsModel> majorsList,
    @Default([]) List<SubjectsModel> subjectsList,
    @Default([]) List<ArticleModel> articlesList,
    @Default({}) Map<String, bool> hoverStates,
    @Default({}) Map<String, bool> deletingStates,
  }) = _ManageArticlesBuildable;
}

@freezed
class ManageArticlesListenable with _$ManageArticlesListenable {
  const factory ManageArticlesListenable() = _ManageArticlesListenable;
}
