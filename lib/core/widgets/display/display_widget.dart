import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/di/injection.dart';

import 'display.dart';
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

  void _initDisplay(BuildContext context) {
    final display = getIt<Display>();

    display.setOnDisplayListener((message) {
      final IconData icon;
      final Color color;
      switch (message.type) {
        case DisplayType.error:
          icon = Icons.error;
          color = Colors.red;
          break;
        case DisplayType.warning:
          icon = Icons.warning;
          color = Colors.orange;
          break;
        case DisplayType.info:
          icon = Icons.info_outline;
          color = Colors.blue;
          break;
        case DisplayType.success:
          icon = Icons.check_circle_outline;
          color = Colors.green;
          break;
      }

      ElegantNotification(
        title: Text(
          message.title ?? '',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
        description: Text(
          message.description,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
        icon: Icon(icon, color: color),
        position: Alignment.topCenter,
        animation: AnimationType.fromTop,
        progressIndicatorColor: color,
      ).show(context);
    });
  }
}
