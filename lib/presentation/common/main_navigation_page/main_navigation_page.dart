import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/constants/roles.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/domain/models/main_navigation_items.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_cubit.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_state.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/widgets/custom_app_bar.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_contents/manage_contents_page.dart';
import 'package:iut_ecms/presentation/manager/dashboard/manager_home_page.dart';
import 'package:iut_ecms/presentation/manager/settings/manager_settings_page.dart';
import 'package:iut_ecms/presentation/user/content/user_majors/user_majors_page.dart';
import 'package:iut_ecms/presentation/user/dashboard/user_home_page.dart';
import 'package:iut_ecms/presentation/user/settings/user_settings_page.dart';

@RoutePage()
class MainNavigationPage
    extends BasePage<MainNavigationCubit, MainNavigationBuildable, MainNavigationListenable> {
  MainNavigationPage({super.key});

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();
  late MainNavigationCubit _mainNavigationCubit;
  List<MainNavigationItems> navigationItems = [];

  List<MainNavigationItems> getMainNavigationItems(String role) {
    switch (role) {
      case Roles.ROLE_STUDENT:
        return MainNavigationItems.studentItems;
      case Roles.ROLE_SYS_ADMIN:
        return MainNavigationItems.adminItems;
      case Roles.ROLE_CONTENT_MANAGER:
        return MainNavigationItems.contentManagerItems;
      default:
        return MainNavigationItems.studentItems;
    }
  }

  Widget getProperPage(int index, String role) {
    switch (role) {
      case Roles.ROLE_STUDENT:
        switch (index) {
          case 0:
            return UserHomePage();
          case 1:
            return UserMajorsPage();
          case 2:
            return UserSettingsPage();
        }
        break;
      case Roles.ROLE_SYS_ADMIN:
        switch (index) {
          case 0:
            return Column();
          case 1:
            return Column();
          case 2:
            return Column();
          case 3:
            return Column();
        }
        break;
      case Roles.ROLE_CONTENT_MANAGER:
        switch (index) {
          case 0:
            return ManagerHomePage();
          case 1:
            return ManageContentsPage();
          case 2:
            return ManagerSettingsPage();
        }
        break;
    }
    return UserHomePage();
  }

  @override
  void init(BuildContext context) {
    _mainNavigationCubit = context.read<MainNavigationCubit>();
    navigationItems = getMainNavigationItems(_mainNavigationCubit.getTokens().role!);

    super.init(context);
  }

  @override
  Widget builder(BuildContext context, MainNavigationBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.window,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Container(
              width: 242,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.boxShadow,
                    blurRadius: 36,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Assets.images.appLogo.image(height: 90),
                  ),
                  const SizedBox(height: 60),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: navigationItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = navigationItems[index];
                        final isActive = state.pageIndex == index;
                        return InkWell(
                          onTap: () async {
                            context.read<MainNavigationCubit>().changePageIndex(index);
                          },
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              color: isActive ? AppColors.activeBackground : AppColors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  item.icon.svg(
                                    colorFilter: ColorFilter.mode(
                                      isActive ? AppColors.activeIcon : AppColors.inactiveIcon,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      item.label.tr(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: isActive
                                            ? AppColors.textBlueOriginal
                                            : AppColors.textLowBlue,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 56,
                                      width: 8,
                                      color:
                                          isActive ? AppColors.activeIcon : AppColors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await _sharedPrefs
                          .setTokens(Tokens(accessToken: '', refreshToken: '', role: ''))
                          .then((_) => context.router.replaceAll([SplashRoute()]));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Strings.logOut,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textLowBlue,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Assets.svgs.logOut.svg(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 24),
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.boxShadow,
                            blurRadius: 36,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: getProperPage(state.pageIndex, _mainNavigationCubit.getTokens().role!),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
