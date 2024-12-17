import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/presentation/user/user_content_type/cubit/user_content_type_cubit.dart';
import 'package:iut_ecms/presentation/user/user_content_type/cubit/user_content_type_state.dart';

@RoutePage()
class UserContentTypePage
    extends BasePage<UserContentTypeCubit, UserContentTypeBuildable, UserContentTypeListenable> {
  UserContentTypePage({super.key});

  final List<String> _items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
  ];

  List<String> _searchResults = [];

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
            SearchAnchor.bar(
              barHintText: Strings.search,
              suggestionsBuilder: (BuildContext context, SearchController controller) {
                _searchResults = _items
                    .where((item) => item.toLowerCase().contains(controller.text.toLowerCase()))
                    .toList();
                if (controller.text.isEmpty) return const [];
                return _searchResults.map((result) {
                  return ListTile(
                    title: Text(result),
                    onTap: () {
                      debugPrint('Selected: $result');
                      controller.text = result;
                    },
                  );
                }).toList();
              },
            ),
          ],
        ),
      ),
    );
  }
}
