import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_articles/cubit/manage_articles_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_articles/cubit/manage_articles_state.dart';

@RoutePage()
class ManageArticlesPage
    extends BasePage<ManageArticlesCubit, ManageArticlesBuildable, ManageArticlesListenable> {
  const ManageArticlesPage({super.key});

  @override
  Widget builder(BuildContext context, ManageArticlesBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
