import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'IUT-eCMS',
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
      ),
      theme: ThemeData(useMaterial3: true),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
