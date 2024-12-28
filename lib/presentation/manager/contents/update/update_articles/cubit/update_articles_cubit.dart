import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/article_model/article_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_article_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_state.dart';

@injectable
class UpdateArticlesCubit extends BaseCubit<UpdateArticlesBuildable, UpdateArticlesListenable> {
  UpdateArticlesCubit(this._articleRepository) : super(const UpdateArticlesBuildable());
  final ManagerArticleRepository _articleRepository;

  Future<String> pickPdfFile() async {
    build((buildable) => buildable.copyWith(uploadFileLoading: true));
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      String? filePath = result.files.single.path;
      if (filePath != null) {
        build((buildable) => buildable.copyWith(uploadFileLoading: false));
        return filePath;
      }
    } else {
      build((buildable) => buildable.copyWith(uploadFileLoading: false));
      return '';
    }
    build((buildable) => buildable.copyWith(uploadFileLoading: false));
    return '';
  }

  Future<String> addArticle({required ArticleModel articleModel}) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    String result = await _articleRepository.addArticles(articleModel: articleModel);
    build((buildable) => buildable.copyWith(loading: false, error: false));
    if (result.isEmpty) {
      return '';
    } else {
      return result;
    }
  }

  Future<String> addArticleToSocket({required ArticleModel articleModel}) async {
    String result = await _articleRepository.addArticlesToSocket(articleModel: articleModel);
    if (result.isEmpty) {
      return '';
    } else {
      return result;
    }
  }
}
