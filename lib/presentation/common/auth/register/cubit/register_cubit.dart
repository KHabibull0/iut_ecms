import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/repos/auth_repository.dart';
import 'package:iut_ecms/presentation/common/auth/register/cubit/register_state.dart';

@injectable
class RegisterCubit extends BaseCubit<RegisterBuildable, RegisterListenable> {
  RegisterCubit(this._authRepository) : super(RegisterBuildable());

  final AuthRepository _authRepository;

  Future<String> register() async {
    build((buildable) => buildable.copyWith(loading: true, error: false));
    final result = await _authRepository.register(registerModel: buildable.registerModel!);
    return result.fold(
      (error) {
        build((buildable) => buildable.copyWith(loading: false, error: true));
        return error;
      },
      (registerResponse) {
        build((buildable) => buildable.copyWith(loading: false, error: false));
        return '';
      },
    );
  }

  void updateRegisterModel({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? studentId,
    String? university,
    String? birthDate,
    String? phoneNumber,
  }) {
    final updatedRegisterModel = buildable.registerModel?.copyWith(
      firstName: firstName ?? buildable.registerModel!.firstName,
      lastName: lastName ?? buildable.registerModel!.lastName,
      email: email ?? buildable.registerModel!.email,
      password: password ?? buildable.registerModel!.password,
      studentId: studentId ?? buildable.registerModel!.studentId,
      university: university ?? buildable.registerModel!.university,
      birthDate: birthDate ?? buildable.registerModel!.birthDate,
      phoneNumber: phoneNumber ?? buildable.registerModel!.phoneNumber,
    );

    build((buildable) => buildable.copyWith(registerModel: updatedRegisterModel));
  }

  String checkRegisterData() {
    if (buildable.currentIndex == 0) {
      if (buildable.registerModel?.firstName == null ||
          buildable.registerModel?.lastName == null ||
          buildable.registerModel?.email == null ||
          buildable.registerModel?.password == null) {
        return 'Please fill the required fields to continue to the next page';
      }
    } else if (buildable.currentIndex == 1) {
      if (buildable.registerModel?.university == null ||
          buildable.registerModel?.studentId == null ||
          buildable.registerModel?.phoneNumber == null ||
          buildable.registerModel?.birthDate == null) {
        return 'Please fill all fields on this page to continue';
      }
    }
    return '';
  }

  void pageIndexControl(int index) {
    build((buildable) => buildable.copyWith(currentIndex: index));
  }

  void changeConfirmedPassword(String confirmedPassword) {
    build((buildable) => buildable.copyWith(confirmedPassword: confirmedPassword));
  }
}
