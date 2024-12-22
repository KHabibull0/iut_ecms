import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_state.dart';

@injectable
class UpdateArticlesCubit extends BaseCubit<UpdateArticlesBuildable, UpdateArticlesListenable> {
  UpdateArticlesCubit() : super(const UpdateArticlesBuildable());
}
