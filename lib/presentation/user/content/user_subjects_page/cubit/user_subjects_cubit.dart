import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_subjects_page/cubit/user_subjects_state.dart';

@injectable
class UserSubjectsCubit extends BaseCubit<UserSubjectsBuildable, UserSubjectsListenable> {
  UserSubjectsCubit() : super(const UserSubjectsBuildable());
}
