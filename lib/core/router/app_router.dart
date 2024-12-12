import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/presentation/common/auth/register/register_page.dart';
import 'package:iut_ecms/presentation/common/auth/sign_in/sign_in_page.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/main_navigation_page.dart';
import 'package:iut_ecms/presentation/common/splash/splash_page.dart';
import 'package:iut_ecms/presentation/user/user_subjects_page/user_subjects_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: MainNavigationRoute.page),
        AutoRoute(page: UserSubjectsRoute.page),
      ];
}
