import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';

class UserSubjectsTable extends StatefulWidget {
  const UserSubjectsTable({super.key});

  @override
  State<UserSubjectsTable> createState() => _UserSubjectsTableState();
}

class _UserSubjectsTableState extends State<UserSubjectsTable> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 123,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 34,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: index != 0
                ? () {
                    context.router.push(UserContentTypeRoute());
                  }
                : null,
            child: Container(
              decoration: BoxDecoration(
                color: (index + 1) % 2 == 0 ? AppColors.white : AppColors.lowGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                      child: Text(
                        index == 0 ? '${Strings.n}.' : '$index',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: index == 0 ? FontWeight.w500 : FontWeight.w400,
                          color: index == 0 ? AppColors.headline : AppColors.subjectTableDataColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      index == 0 ? Strings.subjects : 'Introduction to Computer Science',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: index == 0 ? FontWeight.w500 : FontWeight.w400,
                        color: index == 0 ? AppColors.headline : AppColors.subjectTableDataColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 150,
                      child: Text(
                        index == 0 ? Strings.totalMaterials : '${(index + 1) * 10}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: index == 0 ? AppColors.headline : AppColors.subjectTableDataColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
