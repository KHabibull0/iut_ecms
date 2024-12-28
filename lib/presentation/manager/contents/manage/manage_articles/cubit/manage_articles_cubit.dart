import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/article_model/article_model.dart';
import 'package:iut_ecms/domain/models/majors_model/majors_model.dart';
import 'package:iut_ecms/domain/repos/manager/manager_article_repository.dart';
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_articles/cubit/manage_articles_state.dart';

@injectable
class ManageArticlesCubit extends BaseCubit<ManageArticlesBuildable, ManageArticlesListenable> {
  ManageArticlesCubit(this._managerDashboardRepository, this._managerArticleRepository)
      : super(const ManageArticlesBuildable()) {
    getMajors();
  }

  final ManagerDashboardRepository _managerDashboardRepository;
  final ManagerArticleRepository _managerArticleRepository;

  Future<String> getSubjects({required String name, required int majorId}) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final majors = MajorsModel(name: name, majorId: majorId);
    final result = await _managerDashboardRepository.getSubjects(major: majors);
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) => buildable.copyWith(loading: false, error: false, subjectsList: data));
        return '';
      },
    );
  }

  Future<String> getMajors() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result = await _managerDashboardRepository.getMajors();
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) => buildable.copyWith(loading: false, error: false, majorsList: data));
        return '';
      },
    );
  }

  Future<String> deleteArticles(int articleId) async {
    updateDeleting('$articleId', true);
    final ArticleModel articleModel = ArticleModel(articleId: articleId);
    final result = await _managerArticleRepository.deleteArticles(articleModel: articleModel);
    updateDeleting('$articleId', false);
    return result;
  }

  Future<String> getArticles(int articleId) async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final ArticleModel articleModel = ArticleModel(articleId: articleId);
    final result = await _managerArticleRepository.getArticles(articleModel: articleModel);
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (data) {
        build((buildable) => buildable.copyWith(loading: false, error: false, articlesList: data));
        return '';
      },
    );
  }

  void updateDeleting(String key, bool isHovering) {
    build((buildable) {
      final newDeletingStates = {...buildable.deletingStates, key: isHovering};
      return buildable.copyWith(deletingStates: newDeletingStates);
    });
  }

  void updateHovering(String key, bool isHovering) {
    build((buildable) {
      final newHoverStates = {...buildable.hoverStates, key: isHovering};
      return buildable.copyWith(hoverStates: newHoverStates);
    });
  }

  void updateCurrentMajorId(int currentMajorId) {
    build((buildable) => buildable.copyWith(majorId: currentMajorId));
  }

  void updateCurrentSubjectId(int currentSubjectId) {
    build((buildable) => buildable.copyWith(subjectId: currentSubjectId));
  }

  void updateSelectedMajor(String selectedValue) {
    build((buildable) => buildable.copyWith(selectedMajor: selectedValue));
  }

  void updateSelectedSubject(String selectedValue) {
    build((buildable) => buildable.copyWith(selectedSubject: selectedValue));
  }
}
