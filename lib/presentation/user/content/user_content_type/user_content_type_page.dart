import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/custom_search_bar.dart';
import 'package:iut_ecms/presentation/user/content/user_content_type/cubit/user_content_type_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_content_type/cubit/user_content_type_state.dart';

@RoutePage()
class UserContentTypePage
    extends BasePage<UserContentTypeCubit, UserContentTypeBuildable, UserContentTypeListenable> {
  UserContentTypePage({super.key});

  final List<String> _items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'ElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberry',
    'Fig',
    'Grapes',
    'Honeydew',
  ];

  @override
  Widget builder(BuildContext context, UserContentTypeBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 24),
            Text(
              '${Strings.chooseContentType} (${Strings.typeBook}, '
              '${Strings.typeLetter}, ${Strings.typeArticle})',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.textBlueOriginal,
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerRight,
              child: CustomSearchBar(
                items: _items,
                onSearchItemTap: () {},
              ),
            ),
            const SizedBox(height: 42),
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: _contentTypeView(
                              onTap: () => context.router.push(UserEBookRoute()),
                              type: Strings.eBook,
                              image: DecorationImage(image: AssetImage(Assets.images.book.path),fit: BoxFit.cover),
                              description: Strings.descBook,
                            ),
                          ),
                          const SizedBox(width: 52),
                          Expanded(
                            child: _contentTypeView(
                              onTap: () => context.router.push(UserLettersRoute()),
                              type: Strings.letter,
                              image: DecorationImage(image: AssetImage(Assets.images.letter.path),fit: BoxFit.cover),
                              description:Strings.descLetter),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28),
                    Align(
                      alignment: Alignment.center,
                      child: _contentTypeView(
                        onTap: () => context.router.push(UserArticlesRoute()),
                        width: context.width * 0.425,
                        type: Strings.articles,
                        image: DecorationImage(image: AssetImage(Assets.images.article.path),fit: BoxFit.cover),
                        description:
                            Strings.descArticles),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contentTypeView({
    required String type,
    required String description,
    void Function()? onTap,
    DecorationImage? image,
    double? width,
  }) {
    return SizedBox(
      height: 256,
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 160,
              width: width ?? double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: image,
              ),
              child: Container(
                height: 138,
                width: width ?? double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.semiTransparentBlack,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      type,
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
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.headline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
