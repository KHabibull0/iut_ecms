import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_articles/cubit/manage_articles_state.dart';

@injectable
class ManageArticlesCubit extends BaseCubit<ManageArticlesBuildable, ManageArticlesListenable> {
  ManageArticlesCubit() : super(const ManageArticlesBuildable());
}
