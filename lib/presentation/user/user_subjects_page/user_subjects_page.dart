import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/presentation/user/user_subjects_page/cubit/user_subjects_cubit.dart';
import 'package:iut_ecms/presentation/user/user_subjects_page/cubit/user_subjects_state.dart';
import 'package:iut_ecms/presentation/user/user_subjects_page/widgets/user_subjects_table.dart';
import 'package:iut_ecms/presentation/widgets/resizable_textfield.dart';

@RoutePage()
class UserSubjectsPage
    extends BasePage<UserSubjectsCubit, UserSubjectsBuildable, UserSubjectsListenable> {
  const UserSubjectsPage({super.key});

  @override
  Widget builder(BuildContext context, UserSubjectsBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.router.maybePop();
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    height: 42,
                    width: 42,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Text(
                Strings.canChooseAnySubject,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blueOriginal,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 146,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.semiTransparentBlack,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '{Selected} ${Strings.major}',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                Strings.allResoursesHere,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      Strings.subjectRelatedMajor,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.headline,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ResizableTextfield(
                      height: 32,
                      width: 340,
                      cursorHeight: 16,
                      borderRadius: 10,
                      borderColor: AppColors.dottedBorder,
                      hintTextColor: AppColors.headline,
                      hintText: Strings.search,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 9, bottom: 7),
                        child: Assets.svgs.searchOutlined.svg(),
                      ),
                      contentPadding: EdgeInsets.only(bottom: 6, left: 0),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 16),
                    UserSubjectsTable(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
