import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_majors/cubit/user_majors_state.dart';

@injectable
class UserMajorsCubit extends BaseCubit<UserMajorsBuildable, UserMajorsListenable> {
  UserMajorsCubit() : super(const UserMajorsBuildable());
}
