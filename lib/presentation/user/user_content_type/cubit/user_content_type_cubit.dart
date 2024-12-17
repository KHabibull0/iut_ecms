import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/user/user_content_type/cubit/user_content_type_state.dart';

@injectable
class UserContentTypeCubit extends BaseCubit<UserContentTypeBuildable, UserContentTypeListenable> {
  UserContentTypeCubit() : super(const UserContentTypeBuildable());
}
