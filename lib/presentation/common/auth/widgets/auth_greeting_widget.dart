import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';

class AuthGreetingWidget extends StatelessWidget {
  const AuthGreetingWidget({super.key, required this.header});

  final String header;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width / 2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFF8C43E6), Color(0xFFDF80CA)],
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 120, top: 120),
            child: AutoSizeText(
              textAlign: TextAlign.start,
              header,
              minFontSize: 20,
              maxFontSize: 56,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 56,
                color: AppColors.white,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: Assets.images.authWelcome.image(),
          )),
        ],
      ),
    );
  }
}
