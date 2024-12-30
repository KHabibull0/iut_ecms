import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/presentation/user/content/user_majors/cubit/user_majors_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_majors/cubit/user_majors_state.dart';

// ignore: non_constant_identifier_names
final List<String> MajorImageList=[
  Assets.images.majorBusiness.path,
  Assets.images.majorComputer.path,
  Assets.images.majorEducation.path,
  Assets.images.majorHealth.path,
];
class UserMajorsPage extends BasePage<UserMajorsCubit, UserMajorsBuildable, UserMajorsListenable> {
  const UserMajorsPage({super.key});

  @override
  Widget builder(BuildContext context, UserMajorsBuildable state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.selectYourMajor,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.textBlueOriginal,
          ),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.only(bottom: 24, top: 12),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 182,
            ),
            itemCount: MajorImageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context.router.push(const UserSubjectsRoute());
                    },
                    child: Container(
                      height: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary,
                        image:DecorationImage(
                          image: AssetImage(MajorImageList[index]),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Computer Science',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.headline,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
