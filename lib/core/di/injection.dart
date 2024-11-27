import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/di/injection.config.dart';
import 'package:iut_ecms/core/router/app_router.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();
  getIt.registerLazySingleton(() => AppRouter());
}
