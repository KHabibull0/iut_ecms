import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/content/content_articles_page/cubit/user_articles_state.dart';

@injectable
class UserArticlesCubit extends BaseCubit<UserArticlesBuildable, UserArticlesListenable> {
  UserArticlesCubit() : super(const UserArticlesBuildable());
}
