import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_articles_state.freezed.dart';

@freezed
class UserArticlesBuildable with _$UserArticlesBuildable {
  const factory UserArticlesBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
  }) = _UserArticlesBuildable;
}

@freezed
class UserArticlesListenable with _$UserArticlesListenable {
  const factory UserArticlesListenable() = _UserArticlesListenable;
}
