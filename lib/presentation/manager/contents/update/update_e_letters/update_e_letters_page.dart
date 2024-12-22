import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_state.dart';

@RoutePage()
class UpdateELettersPage
    extends BasePage<UpdateELettersCubit, UpdateELettersBuildable, UpdateELettersListenable> {
  const UpdateELettersPage({super.key});

  @override
  Widget builder(BuildContext context, UpdateELettersBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
