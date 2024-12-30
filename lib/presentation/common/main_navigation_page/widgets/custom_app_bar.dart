import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      margin: EdgeInsets.only(left: 24, bottom: 24),
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.boxShadow,
            blurRadius: 36,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: '${Strings.hi} , ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.textBlueOriginal,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'John Doe',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textBlueOriginal,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              width: 41,
              height: 41,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
