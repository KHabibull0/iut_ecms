import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_cubit.dart';
import 'package:iut_ecms/presentation/common/splash/cubit/splash_cubit.dart';
import 'package:iut_ecms/presentation/common/splash/cubit/splash_state.dart';
import 'package:loading_indicator/loading_indicator.dart';

@RoutePage()
class SplashPage extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  SplashPage({super.key});
  late MainNavigationCubit _mainNavigationCubit;

  @override
  void init(BuildContext context) async {
    _mainNavigationCubit = context.read<MainNavigationCubit>();
    final Tokens tokens = _mainNavigationCubit.getTokens();
    log(tokens.toString());
    if ((tokens.role == null || tokens.role!.isEmpty) &&
        (tokens.accessToken == null || tokens.accessToken!.isEmpty)) {
      await Future.delayed(const Duration(milliseconds: 1500)).then(
        (value) => context.router.replace(SignInRoute()),
      );
    } else {
      context.router.replace(MainNavigationRoute());
    }
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Assets.images.appLogo.image(height: 150, width: 300)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SizedBox(
                height: 60,
                child: const LoadingIndicator(
                  indicatorType: Indicator.ballRotateChase,
                  colors: [AppColors.primary],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
