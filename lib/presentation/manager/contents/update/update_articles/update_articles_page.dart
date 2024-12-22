import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_state.dart';

@RoutePage()
class UpdateArticlesPage
    extends BasePage<UpdateArticlesCubit, UpdateArticlesBuildable, UpdateArticlesListenable> {
  const UpdateArticlesPage({super.key});

  @override
  Widget builder(BuildContext context, UpdateArticlesBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
