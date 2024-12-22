import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/formatters/date_input_formatter.dart';
import 'package:iut_ecms/core/widgets/formatters/phone_number_formatter.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/presentation/common/auth/register/cubit/register_cubit.dart';
import 'package:iut_ecms/presentation/common/auth/register/cubit/register_state.dart';
import 'package:iut_ecms/presentation/common/auth/widgets/auth_greeting_widget.dart';
import 'package:iut_ecms/presentation/common/auth/widgets/auth_input_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class RegisterPage extends BasePage<RegisterCubit, RegisterBuildable, RegisterListenable> {
  RegisterPage({super.key});

  final FocusNode _focusNode = FocusNode();
  final CarouselSliderController _carouselController = CarouselSliderController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController studentIdController = TextEditingController();
  final TextEditingController universityController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  late RegisterCubit registerCubit;

  @override
  void init(BuildContext context) {
    registerCubit = context.read<RegisterCubit>();
    super.init(context);
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    studentIdController.dispose();
    universityController.dispose();
    phoneNumberController.dispose();
    birthDateController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, RegisterBuildable state) {
    double dynamicButtonPadding = (context.width * 0.08).clamp(40, 150);
    double dynamicScreenPadding = (context.width * 0.08).clamp(40, 100);
    firstNameController.text = state.registerModel?.firstName ?? '';
    lastNameController.text = state.registerModel?.lastName ?? '';
    emailController.text = state.registerModel?.email ?? '';
    passwordController.text = state.registerModel?.password ?? '';
    studentIdController.text = state.registerModel?.studentId ?? '';
    universityController.text = state.registerModel?.university ?? '';
    confirmPasswordController.text = state.confirmedPassword ?? '';
    phoneNumberController.text = state.registerModel?.phoneNumber ?? '';
    birthDateController.text = state.registerModel?.birthDate ?? '';

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AuthGreetingWidget(header: Strings.welcomeToApp),
          Container(
            width: context.width / 2,
            height: context.height,
            color: AppColors.white,
            child: Padding(
              padding:
                  EdgeInsets.only(left: dynamicScreenPadding, right: dynamicScreenPadding, top: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedOpacity(
                          opacity: state.currentIndex == 1 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 300),
                          child: GestureDetector(
                            onTap: () {
                              int currentIndex = state.currentIndex;
                              if (state.currentIndex > 0) {
                                context.read<RegisterCubit>().pageIndexControl(currentIndex - 1);
                                _carouselController.animateToPage(
                                  currentIndex - 1,
                                  duration: const Duration(milliseconds: 300),
                                );
                              } else {}
                            },
                            child: SizedBox(
                              height: 32,
                              width: 32,
                              child: state.currentIndex == 1
                                  ? Assets.svgs.arrowCircleBack.svg()
                                  : const SizedBox.shrink(),
                            ),
                          )),
                      Align(
                        alignment: Alignment.topRight,
                        child: RichText(
                          text: TextSpan(
                            text: '${Strings.alreadyHaveAccount} ',
                            style: TextStyle(fontSize: 16, color: AppColors.text26),
                            children: <TextSpan>[
                              TextSpan(
                                text: Strings.signIn,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.vividBlue,
                                  fontWeight: FontWeight.w500,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => context.router.replace(SignInRoute()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  AutoSizeText(
                    Strings.createYourAccount,
                    minFontSize: 20,
                    maxFontSize: 32,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.headline,
                    ),
                  ),
                  const SizedBox(height: 22),
                  CarouselSlider(
                    items: [
                      SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AuthInputView(
                              controller: firstNameController,
                              header: Strings.firstName,
                              hint: Strings.typeHere,
                              icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(firstName: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: lastNameController,
                              header: Strings.lastName,
                              hint: Strings.typeHere,
                              icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(lastName: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: emailController,
                              header: Strings.emailAddress,
                              hint: Strings.typeHere,
                              icon: Assets.svgs.sms.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(email: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: passwordController,
                              header: Strings.password,
                              hint: Strings.typeHere,
                              icon: Assets.svgs.lock.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(password: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: confirmPasswordController,
                              header: Strings.confirmPassword,
                              hint: Strings.typeHere,
                              icon: Assets.svgs.lock.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {
                                registerCubit.changeConfirmedPassword(value);
                              },
                            ),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AuthInputView(
                              controller: studentIdController,
                              header: Strings.studentId,
                              hint: Strings.typeHere,
                              icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(studentId: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: universityController,
                              header: Strings.university,
                              hint: Strings.typeHere,
                              icon: Assets.svgs.studentHat.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(university: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: phoneNumberController,
                              header: Strings.phone,
                              hint: '(--) --- -- --',
                              maxLength: 14,
                              inputFormatter: [PhoneNumberFormatter()],
                              icon: Assets.svgs.phoneRing.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(phoneNumber: value);
                              },
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              controller: birthDateController,
                              header: Strings.dateOfBirth,
                              inputFormatter: [DateInputFormatter()],
                              maxLength: 10,
                              hint: Strings.dmy,
                              icon: Assets.svgs.calendar.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {
                                registerCubit.updateRegisterModel(birthDate: value);
                              },
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: context.height * 0.45,
                      viewportFraction: 1.0,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (index, reason) {
                        context.read<RegisterCubit>().pageIndexControl(index);
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SmoothPageIndicator(
                      controller: PageController(initialPage: state.currentIndex),
                      count: 2,
                      effect: ExpandingDotsEffect(
                        radius: 50,
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: AppColors.primary,
                        dotColor: Colors.grey,
                        expansionFactor: 4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
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
                        onPressed: () async {
                          int currentIndex = state.currentIndex;
                          String result = registerCubit.checkRegisterData();
                          if ((state.registerModel?.password ?? '') !=
                              confirmPasswordController.text) {
                            ResultNotifier(context: context, message: 'Passwords do not match')
                                .showError();
                            return;
                          }
                          if (result.isEmpty) {
                            if (currentIndex == 0) {
                              context.read<RegisterCubit>().pageIndexControl(currentIndex + 1);
                              _carouselController.animateToPage(
                                currentIndex + 1,
                                duration: const Duration(milliseconds: 300),
                              );
                            } else if (currentIndex == 1) {
                              log(state.registerModel.toString());
                              await registerCubit.register().then((data) {
                                if (data.isEmpty) {
                                  ResultNotifier(
                                    context: context,
                                    message: 'User has been registered successfully',
                                  ).showSuccess();
                                  context.router.replaceAll([SignInRoute()]);
                                } else {
                                  ResultNotifier(context: context, message: data).showError();
                                }
                              });
                            }
                          } else {
                            ResultNotifier(context: context, message: result).showError();
                          }
                        },
                        loading: state.loading,
                        shadowColor: AppColors.transparent,
                        backgroundColor: AppColors.transparent,
                        text: state.currentIndex == 0 ? Strings.next : Strings.signUp,
                        radius: 50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Center(child: Assets.images.appLogo.image(height: 100, width: 250)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
