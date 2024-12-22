import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_books/cubit/manage_e_books_state.dart';

@injectable
class ManageEBooksCubit extends BaseCubit<ManageEBooksBuildable, ManageEBooksListenable> {
  ManageEBooksCubit() : super(const ManageEBooksBuildable());
}
