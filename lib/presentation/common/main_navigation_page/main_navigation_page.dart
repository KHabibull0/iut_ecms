import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/local_keys.g.dart';
import 'package:iut_ecms/domain/models/main_navigation_items.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/widgets/custom_app_bar.dart';
import 'package:iut_ecms/presentation/user/user_content/user_content_page.dart';
import 'package:iut_ecms/presentation/user/user_home/user_home_page.dart';
import 'package:iut_ecms/presentation/user/user_settings/user_settings_page.dart';

@RoutePage()
class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
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
                      itemCount: MainNavigationItems.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = MainNavigationItems.items[index];
                        final isActive = _activeIndex == index;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _activeIndex = index;
                            });
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.logOut.tr(),
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
                      child: getProperPage(_activeIndex),
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

  Widget getProperPage(int index) {
    switch (index) {
      case 0:
        return UserHomePage();
      case 1:
        return UserContentPage();
      case 2:
        return UserSettingsPage();
      default:
        return UserHomePage();
    }
  }
}
