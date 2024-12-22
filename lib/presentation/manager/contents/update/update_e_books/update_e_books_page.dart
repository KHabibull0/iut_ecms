import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_state.dart';

@RoutePage()
class UpdateEBooksPage
    extends BasePage<UpdateEBooksCubit, UpdateEBooksBuildable, UpdateEBooksListenable> {
  const UpdateEBooksPage({super.key});

  @override
  Widget builder(BuildContext context, UpdateEBooksBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
