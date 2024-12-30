import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_contents/cubit/manage_contents_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_contents/cubit/manage_contents_state.dart';

class ManageContentsPage
    extends BasePage<ManageContentsCubit, ManageContentsBuildable, ManageContentsListenable> {
  const ManageContentsPage({super.key});

  @override
  Widget builder(BuildContext context, ManageContentsBuildable state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 32,
      children: [
        Text(
          'Manage Contents',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textBlueOriginal,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              spacing: 32,
              children: [
                _contentManagementItem(
                  header: 'Manage Majors',
                  onTap: () => context.router.push(ManageMajorsRoute()),
                ),
                Row(
                  spacing: 32,
                  children: [
                    Expanded(
                      child: _contentManagementItem(
                        header: 'Manage Subjects',
                        onTap: () => context.router.push(ManageSubjectsRoute()),
                      ),
                    ),
                    Expanded(
                      child: _contentManagementItem(
                        header: 'Manage eBooks',
                        onTap: () => context.router.push(ManageEBooksRoute()),
                      ),
                    ),
                  ],
                ),
                _contentManagementItem(
                  header: 'Manage Articles',
                  onTap: () => context.router.push(ManageArticlesRoute()),
                ),
                _contentManagementItem(
                  header: 'Manage e-Letters',
                  onTap: () => context.router.push(ManageELettersRoute()),
                ),
                const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _contentManagementItem({
    required String header,
    void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 138,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary,
        ),
        child: Container(
          height: 138,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.semiTransparentBlack,
          ),
          child: Center(
            child: Text(
              header,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
