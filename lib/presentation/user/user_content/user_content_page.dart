import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/local_keys.g.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/main.dart';
import 'package:iut_ecms/presentation/user/user_content/cubit/user_content_cubit.dart';
import 'package:iut_ecms/presentation/user/user_content/cubit/user_content_state.dart';

class UserContentPage
    extends BasePage<UserContentCubit, UserContentBuildable, UserContentListenable> {
  const UserContentPage({super.key});

  @override
  Widget builder(BuildContext context, UserContentBuildable state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.selectYourMajor.tr(),
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
            itemCount: 12,
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
