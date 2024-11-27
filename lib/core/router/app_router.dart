import 'package:auto_route/auto_route.dart';
import 'package:iut_ecms/presentation/auth/register/register_page.dart';
import 'package:iut_ecms/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
      ];
}
