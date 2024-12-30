import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/custom_search_bar.dart';
import 'package:iut_ecms/presentation/user/content/user_letters_page/cubit/user_letters_cubit.dart';
import 'package:iut_ecms/presentation/user/content/user_letters_page/cubit/user_letters_state.dart';

@RoutePage()
class UserLettersPage
    extends BasePage<UserLettersCubit, UserLettersBuildable, UserLettersListenable> {
  UserLettersPage({super.key});

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
  Widget builder(BuildContext context, UserLettersBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
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
                const Spacer(),
                CustomSearchBar(
                  items: _items,
                  onSearchItemTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 80),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 36,
                  mainAxisSpacing: 32,
                  mainAxisExtent: 566,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.articleViewBackground,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 232,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 14, top: 8),
                          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primary,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'What is Computer Science? A Beginner\'s Guide to Understanding the Field',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.headline,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Author: Nell Dale, John Lewis',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.authorNameDisplayColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 110,
                                child: SingleChildScrollView(
                                  physics: const ClampingScrollPhysics(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Introduction to basic computer science concepts, including'
                                        ' programming, data structures, and algorithms.Introduction'
                                        ' to basic computer science concepts, including'
                                        ' programming, data structures, and algorithms.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.contentDescriptionTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 14),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 74),
                                child: CommonButton.elevated(
                                  text: Strings.read,
                                  backgroundColor: AppColors.blueOriginal,
                                  onPressed: () =>
                                      context.router.push(UserDocumentReaderRoute(filePath: '')),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
