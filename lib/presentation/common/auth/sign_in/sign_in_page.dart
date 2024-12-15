import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/presentation/common/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:iut_ecms/presentation/common/auth/sign_in/cubit/sign_in_state.dart';
import 'package:iut_ecms/presentation/common/auth/widgets/auth_greeting_widget.dart';
import 'package:iut_ecms/presentation/common/auth/widgets/auth_input_view.dart';

@RoutePage()
class SignInPage extends BasePage<SignInCubit, SignInBuildable, SignInListenable> {
  const SignInPage({super.key});

  @override
  Widget builder(BuildContext context, SignInBuildable state) {
    double dynamicButtonPadding = (context.width * 0.08).clamp(40, 150);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AuthGreetingWidget(header: Strings.welcomeBack),
          Container(
            width: context.width / 2,
            height: context.height,
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: RichText(
                      text: TextSpan(
                        text: '${Strings.haveNoAccount} ',
                        style: TextStyle(fontSize: 16, color: AppColors.text26),
                        children: <TextSpan>[
                          TextSpan(
                            text: Strings.signUp,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.vividBlue,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => context.router.replace(RegisterRoute()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        Strings.loginToAccount,
                        minFontSize: 20,
                        maxFontSize: 32,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: AppColors.headline,
                        ),
                      ),
                      const SizedBox(height: 44),
                      AuthInputView(
                        header: Strings.emailAddress,
                        hint: Strings.typeHere,
                        icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 16),
                      AuthInputView(
                        header: Strings.password,
                        hint: Strings.typeHere,
                        icon: Assets.svgs.lock.svg(
                          colorFilter: ColorFilter.mode(
                            AppColors.textFieldIconColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 42),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicButtonPadding),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [AppColors.primary, AppColors.secondary],
                            ),
                          ),
                          child: CommonButton.elevated(
                            onPressed: () {
                              context.router.replaceAll([MainNavigationRoute()]);
                            },
                            shadowColor: AppColors.transparent,
                            backgroundColor: AppColors.transparent,
                            text: Strings.signIn,
                            radius: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(child: Assets.images.appLogo.image(height: 100, width: 250)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
