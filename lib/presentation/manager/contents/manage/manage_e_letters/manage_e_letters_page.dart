import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_state.dart';

@RoutePage()
class ManageELettersPage
    extends BasePage<ManageELettersCubit, ManageELettersBuildable, ManageELettersListenable> {
  const ManageELettersPage({super.key});

  @override
  Widget builder(BuildContext context, ManageELettersBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
