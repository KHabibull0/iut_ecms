import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_state.dart';

@injectable
class UpdateEBooksCubit extends BaseCubit<UpdateEBooksBuildable, UpdateEBooksListenable> {
  UpdateEBooksCubit() : super(const UpdateEBooksBuildable());
}
