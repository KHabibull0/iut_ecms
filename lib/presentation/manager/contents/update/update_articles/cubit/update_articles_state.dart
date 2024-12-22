import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_articles_state.freezed.dart';

@freezed
class UpdateArticlesBuildable with _$UpdateArticlesBuildable {
  const factory UpdateArticlesBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UpdateArticlesBuildable;
}

@freezed
class UpdateArticlesListenable with _$UpdateArticlesListenable {
  const factory UpdateArticlesListenable() = _UpdateArticlesListenable;
}
