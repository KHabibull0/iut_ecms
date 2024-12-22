import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/repos/splash_repository.dart';
import 'package:iut_ecms/presentation/common/splash/cubit/splash_state.dart';

@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit(this._splashRepository) : super(const SplashBuildable());

  final SplashRepository _splashRepository;
}
