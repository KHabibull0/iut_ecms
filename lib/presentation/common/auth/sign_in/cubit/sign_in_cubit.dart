import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/domain/repos/auth_repository.dart';
import 'package:iut_ecms/presentation/common/auth/sign_in/cubit/sign_in_state.dart';

@injectable
class SignInCubit extends BaseCubit<SignInBuildable, SignInListenable> {
  SignInCubit(this._authRepository) : super(SignInBuildable());

  final AuthRepository _authRepository;

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();

  Future<String> login() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result = await _authRepository.login(loginModel: buildable.loginModel!);
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (tokens) async {
        await _sharedPrefs.setTokens(tokens);
        build((buildable) => buildable.copyWith(loading: false, error: false));
        return '';
      },
    );
  }

  void updateLoginModel({String? email, String? password}) {
    final updatedLoginModel = buildable.loginModel?.copyWith(
      email: email ?? buildable.loginModel!.email,
      password: password ?? buildable.loginModel!.password,
    );
    build((buildable) => buildable.copyWith(loginModel: updatedLoginModel));
  }

  String checkLoginData() {
    if (buildable.loginModel?.email == null || buildable.loginModel?.password == null) {
      return 'Please fill the all fields above to continue to next page';
    } else {
      return '';
    }
  }
}
