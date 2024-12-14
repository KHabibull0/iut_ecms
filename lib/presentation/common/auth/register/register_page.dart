import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:board_datetime_picker/board_datetime_picker.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/local_keys.g.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/formatters/date_input_formatter.dart';
import 'package:iut_ecms/core/widgets/formatters/phone_number_formatter.dart';
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
  final ValueNotifier<DateTime> builderDate = ValueNotifier(DateTime.now());
  final scrollController = ScrollController();
  final controller = BoardDateTimeController();
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, RegisterBuildable state) {
    double dynamicButtonPadding = (context.width * 0.08).clamp(40, 150);
    double dynamicScreenPadding = (context.width * 0.08).clamp(40, 100);

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AuthGreetingWidget(header: LocaleKeys.welcomeToApp.tr()),
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
                            text: '${LocaleKeys.alreadyHaveAccount.tr()} ',
                            style: TextStyle(fontSize: 16, color: AppColors.text26),
                            children: <TextSpan>[
                              TextSpan(
                                text: LocaleKeys.signIn.tr(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.vividBlue,
                                  fontWeight: FontWeight.w500,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => context.router.replace(const SignInRoute()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  AutoSizeText(
                    LocaleKeys.createYourAccount.tr(),
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
                              header: LocaleKeys.firstName.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.lastName.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.emailAddress.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Assets.svgs.sms.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.password.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Assets.svgs.lock.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.confirmPassword.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Assets.svgs.lock.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {},
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
                              header: LocaleKeys.studentId.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Icon(Icons.person_rounded, color: AppColors.textFieldIconColor),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.university.tr(),
                              hint: LocaleKeys.typeHere.tr(),
                              icon: Assets.svgs.studentHat.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.phone.tr(),
                              hint: '(--) --- -- --',
                              maxLength: 14,
                              inputFormatter: [PhoneNumberFormatter()],
                              icon: Assets.svgs.phoneRing.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            AuthInputView(
                              header: LocaleKeys.dateOfBirth.tr(),
                              inputFormatter: [DateInputFormatter()],
                              maxLength: 10,
                              readOnly: true,
                              hint: LocaleKeys.dmy.tr(),
                              icon: Assets.svgs.calendar.svg(
                                colorFilter: ColorFilter.mode(
                                  AppColors.textFieldIconColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DatePickerDialog(
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1924),
                                      lastDate: DateTime.now(),
                                    );
                                  },
                                );
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
                        onPressed: () {
                          int currentIndex = state.currentIndex;
                          if (state.currentIndex < 1) {
                            context.read<RegisterCubit>().pageIndexControl(currentIndex + 1);
                            _carouselController.animateToPage(
                              currentIndex + 1,
                              duration: const Duration(milliseconds: 300),
                            );
                          } else {
                            context.router.replaceAll([MainNavigationRoute()]);
                          }
                        },
                        shadowColor: AppColors.transparent,
                        backgroundColor: AppColors.transparent,
                        text:
                            state.currentIndex == 0 ? LocaleKeys.next.tr() : LocaleKeys.signUp.tr(),
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
