import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_subjects/cubit/update_subjects_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_subjects/cubit/update_subjects_state.dart';

@RoutePage()
class UpdateSubjectsPage
    extends BasePage<UpdateSubjectsCubit, UpdateSubjectsBuildable, UpdateSubjectsListenable> {
  const UpdateSubjectsPage({super.key});

  @override
  Widget builder(BuildContext context, UpdateSubjectsBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
