import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/strings.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    required this.items,
    this.height,
    this.width,
    this.onSearchItemTap,
  });

  final List<String> items;
  final double? height;
  final double? width;
  final Function()? onSearchItemTap;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  List<String> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 42,
      width: widget.width ?? context.width * 0.3,
      child: SearchAnchor.bar(
        barBackgroundColor: WidgetStateProperty.all<Color>(AppColors.white),
        barElevation: WidgetStateProperty.all<double>(0),
        barShape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: AppColors.dottedBorder, width: 1.5),
          ),
        ),
        viewShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: AppColors.dottedBorder, width: 1.5),
        ),
        viewBackgroundColor: AppColors.white,
        dividerColor: AppColors.dottedBorder,
        scrollPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        viewHintText: Strings.search,
        barHintText: Strings.search,
        suggestionsBuilder: (BuildContext context, SearchController controller) {
          _searchResults = widget.items
              .where((item) => item.toLowerCase().contains(controller.text.toLowerCase()))
              .toList();
          if (controller.text.isEmpty) return const [];
          return _searchResults.map((result) {
            return SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: InkWell(
                onTap: () {
                  controller.text = result;
                  if (widget.onSearchItemTap != null) {
                    widget.onSearchItemTap!();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(children: [Text(result)]),
                ),
              ),
            );
          }).toList();
        },
      ),
    );
  }
}
