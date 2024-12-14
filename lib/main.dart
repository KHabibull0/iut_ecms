import 'dart:async';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/gen/codegen_loader.g.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/utils/locale_convert.dart';
import 'package:iut_ecms/core/widgets/display/display_widget.dart';
import 'package:iut_ecms/domain/models/language/language.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/presentation/app/cubit/app_cubit.dart';
import 'package:iut_ecms/presentation/app/cubit/app_state.dart';
import 'package:window_manager/window_manager.dart';

final StreamController<Locale> localeController = StreamController<Locale>.broadcast();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    minimumSize: Size(1295, 810),
    size: Size(1295, 810),
    center: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();

  Language language = sharedPrefs.getLanguage();
  Locale locale = LocaleConvert.getProperLocale(language.code!);

  localeController.add(locale);

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uz', 'UZ'),
        Locale('ru', 'RU'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      startLocale: Locale('en', 'US'),
      assetLoader: const CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends BasePage<AppCubit, AppBuildable, AppListenable> {
  const MyApp({super.key});

  @override
  Widget builder(BuildContext context, AppBuildable state) {
    return StreamBuilder<Locale>(
        stream: localeController.stream,
        initialData: context.locale,
        builder: (context, snapshot) {
          final locale = snapshot.data ?? context.locale;
          return DisplayWidget(
            child: MaterialApp.router(
              title: 'IUT-eCMS',
              debugShowCheckedModeBanner: false,
              scrollBehavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
              ),
              theme: ThemeData(useMaterial3: true),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: locale,
              routerConfig: getIt<AppRouter>().config(),
            ),
          );
        });
  }
}
