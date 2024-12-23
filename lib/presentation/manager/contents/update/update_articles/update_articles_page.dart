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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 39, left: 12),
              child: InkWell(
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
            ),
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
