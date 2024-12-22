import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/dashboard/cubit/user_home_state.dart';

@injectable
class UserHomeCubit extends BaseCubit<UserHomeBuildable, UserHomeListenable> {
  UserHomeCubit() : super(UserHomeBuildable());
}
