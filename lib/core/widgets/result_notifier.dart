// import 'package:elegant_notification/elegant_notification.dart';
// import 'package:elegant_notification/resources/arrays.dart';
// import 'package:flutter/material.dart';
//
// class ResultNotifier {
//   final String message;
//   final BuildContext context;
//
//   ResultNotifier({
//     required this.message,
//     required this.context,
//   });
//
//   void showSuccess() {
//     ElegantNotification(
//       animationDuration: const Duration(seconds: 1),
//       height: 72,
//       radius: 8,
//       background: Color(0xFF11BF36),
//       description: message
//           .s(16)
//           .w(500)
//           .c(Colors.white)
//           .copyWith(maxLines: 3, overflow: TextOverflow.ellipsis),
//       icon: Assets.icons.verifiedCheck
//           .svg(colorFilter: ColorFilter.mode(context.colors.onPrimary, BlendMode.srcIn)),
//       showProgressIndicator: false,
//       displayCloseButton: false,
//       enableShadow: true,
//       progressBarWidth: 2,
//       animation: AnimationType.fromRight,
//     ).show(context);
//   }
//
//   void showError() {
//     ElegantNotification(
//       animationDuration: const Duration(seconds: 1),
//       height: 72,
//       radius: 8,
//       background: Color(0xFFF41916),
//       description: message
//           .s(16)
//           .w(500)
//           .c(Colors.white)
//           .copyWith(maxLines: 3, overflow: TextOverflow.ellipsis),
//       icon: Assets.icons.verifiedCheck
//           .svg(colorFilter: ColorFilter.mode(context.colors.onPrimary, BlendMode.srcIn)),
//       showProgressIndicator: false,
//       displayCloseButton: false,
//       enableShadow: true,
//       progressBarWidth: 2,
//       animation: AnimationType.fromRight,
//     ).show(context);
//   }
// }
