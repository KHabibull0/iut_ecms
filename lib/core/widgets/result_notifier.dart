import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';

class ResultNotifier {
  final String message;
  final BuildContext context;

  ResultNotifier({
    required this.message,
    required this.context,
  });

  void showSuccess() {
    ElegantNotification(
      animationDuration: const Duration(seconds: 1),
      height: 72,
      background: Color(0xFF11BF36),
      description: Text(
        message,
        maxLines: 3,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      icon: Assets.images.verify.image(height: 30, width: 30),
      showProgressIndicator: false,
      displayCloseButton: false,
      progressBarWidth: 2,
      animation: AnimationType.fromRight,
    ).show(context);
  }

  void showError() {
    ElegantNotification(
      animationDuration: const Duration(seconds: 1),
      height: 72,
      background: Color(0xFFF41916),
      description: Text(
        message,
        maxLines: 3,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      icon: Assets.svgs.errorIcon.svg(
        height: 30,
        width: 30,
        colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
      ),
      showProgressIndicator: false,
      displayCloseButton: false,
      progressBarWidth: 2,
      animation: AnimationType.fromRight,
    ).show(context);
  }
}
