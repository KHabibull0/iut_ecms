import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_letters_page/cubit/user_letters_state.dart';

@injectable
class UserLettersCubit extends BaseCubit<UserLettersBuildable, UserLettersListenable> {
  UserLettersCubit() : super(const UserLettersBuildable());
}
