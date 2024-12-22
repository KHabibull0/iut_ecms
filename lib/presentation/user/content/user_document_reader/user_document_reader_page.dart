import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/widgets/custom_search_bar.dart';

@RoutePage()
class UserDocumentReaderPage extends StatelessWidget {
  UserDocumentReaderPage({super.key});

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
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
          ],
        ),
      ),
    );
  }
}
