import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    int? articleId,
    int? subjectId,
    String? title,
    String? reference,
    int? publishYear,
    String? file,
    String? path,
    String? author,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);
}

List<ArticleModel> articlesFromJsonAsList(dynamic json) =>
    List<ArticleModel>.from(json.map((element) => ArticleModel.fromJson(element)));
