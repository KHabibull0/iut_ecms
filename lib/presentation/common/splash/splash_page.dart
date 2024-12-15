import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/presentation/common/splash/cubit/splash_cubit.dart';
import 'package:iut_ecms/presentation/common/splash/cubit/splash_state.dart';
import 'package:loading_indicator/loading_indicator.dart';

@RoutePage()
class SplashPage extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void init(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1500))
        .then((_) => context.router.replace(const SignInRoute()));
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
