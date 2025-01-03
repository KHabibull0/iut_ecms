import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/constants/constants.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/presentation/user/dashboard/cubit/user_home_cubit.dart';
import 'package:iut_ecms/presentation/user/dashboard/cubit/user_home_state.dart';

class UserHomePage extends BasePage<UserHomeCubit, UserHomeBuildable, UserHomeListenable> {
   UserHomePage({super.key});

final List<String> platformBenefitImageList=[
  Assets.images.benefitAcademic.path,
  Assets.images.benefitAccessibility.path,
  Assets.images.benefitLearning.path,
  Assets.images.benefitTime.path
];

final List<String> platformBenefitTextList=[
  Strings.centralized,
  Strings.accessibility,
  Strings.improveExperience,
  Strings.timeCost
];

  @override
  Widget builder(BuildContext context, UserHomeBuildable state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.welcomeToApp,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.headline,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image:AssetImage(Assets.images.banner.path),fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.semiTransparentBlack,
            ),
            child: Center(
              child: Text(
                Strings.cmsForStudents,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 32),
        Align(
          alignment: Alignment.center,
          child: Text(
            Strings.platformBenefits,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.headline,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 202,
                  width: double.infinity,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: platformBenefitImageList.length,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            height: 138,
                            width: 340,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage( image:AssetImage(platformBenefitImageList[index]),fit: BoxFit.cover,)
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            platformBenefitTextList[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.headline,
                            ),
                          ),
                          const SizedBox(height: 4),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  Strings.ourPlatform,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.headline,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  Constants.outPlatformInfo,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textInfoColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
