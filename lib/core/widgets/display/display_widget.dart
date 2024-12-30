import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/widgets/display/display.dart';

import '../../gen/assets.gen.dart';
import 'display_type.dart';

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          child,
          Builder(
            builder: (context) {
              _initDisplay(context);
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  _initDisplay(BuildContext context) {
    final display = getIt<Display>();

    display.setOnDisplayListener(
      (message) {
        final Widget icon;
        final Color color;
        switch (message.type) {
          case DisplayType.error:
            icon = Assets.svgs.information.svg(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              height: 28,
              width: 28,
            );
            color = Colors.red;
            break;
          case DisplayType.warning:
            icon = Assets.svgs.information.svg(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              height: 28,
              width: 28,
            );
            color = Colors.orange;
            break;
          case DisplayType.info:
            icon = Assets.svgs.information.svg(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              height: 28,
              width: 28,
            );
            color = Colors.blue;
            break;
          case DisplayType.success:
            icon = Assets.images.verify.image(
              color: Colors.white,
              height: 28,
              width: 28,
            );
            color = Colors.green;
            break;
        }

        ElegantNotification(
          animationDuration: const Duration(seconds: 1),
          height: 72,
          background: color,
          description: Text(
            message.description,
            maxLines: 3,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          icon: icon,
          notificationMargin: 56,
          showProgressIndicator: false,
          displayCloseButton: false,
        ).show(context);
      },
    );
  }
}
