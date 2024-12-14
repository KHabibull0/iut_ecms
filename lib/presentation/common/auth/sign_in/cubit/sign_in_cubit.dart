import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/common/auth/sign_in/cubit/sign_in_state.dart';

@injectable
class SignInCubit extends BaseCubit<SignInBuildable, SignInListenable> {
  SignInCubit() : super(SignInBuildable());
}
