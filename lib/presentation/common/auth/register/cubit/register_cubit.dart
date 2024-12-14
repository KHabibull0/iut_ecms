import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/common/auth/register/cubit/register_state.dart';

@injectable
class RegisterCubit extends BaseCubit<RegisterBuildable, RegisterListenable> {
  RegisterCubit() : super(RegisterBuildable());

  void pageIndexControl(int index) {
    build((buildable) => buildable.copyWith(currentIndex: index));
  }
}
