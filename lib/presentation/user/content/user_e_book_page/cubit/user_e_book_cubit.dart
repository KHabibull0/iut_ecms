import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_e_book_page/cubit/user_e_book_state.dart';

@injectable
class UserEBookCubit extends BaseCubit<UserEBookBuildable, UserEBookListenable> {
  UserEBookCubit() : super(const UserEBookBuildable());
}
