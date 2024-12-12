import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/user_content/cubit/user_content_state.dart';

@injectable
class UserContentCubit extends BaseCubit<UserContentBuildable, UserContentListenable> {
  UserContentCubit() : super(const UserContentBuildable());
}
