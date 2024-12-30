import 'package:dartz/dartz.dart';
import 'package:iut_ecms/domain/models/article_model/article_model.dart';

abstract class ManagerArticleRepository {
  Future<String> addArticles({required ArticleModel articleModel});
  Future<String> addArticlesToSocket({required ArticleModel articleModel});
  Future<Either<String, List<ArticleModel>>> getArticles({required ArticleModel articleModel});
  Future<String> deleteArticles({required ArticleModel articleModel});
}
