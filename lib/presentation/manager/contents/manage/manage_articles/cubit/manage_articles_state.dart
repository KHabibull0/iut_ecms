import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_articles_state.freezed.dart';

@freezed
class ManageArticlesBuildable with _$ManageArticlesBuildable {
  const factory ManageArticlesBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _ManageArticlesBuildable;
}

@freezed
class ManageArticlesListenable with _$ManageArticlesListenable {
  const factory ManageArticlesListenable() = _ManageArticlesListenable;
}
