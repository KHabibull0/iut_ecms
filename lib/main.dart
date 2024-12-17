import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/display/display_widget.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_cubit.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_state.dart';
import 'package:window_manager/window_manager.dart';

final ValueNotifier<Locale> appLocaleNotifier = ValueNotifier(Locale('en', 'US'));
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
  await sharedPrefs.setMainPageIndex(0);

  runApp(
    EasyLocalization(
      supportedLocales: Strings.supportedLocales,
      path: Assets.localization.translations,
      fallbackLocale: Strings.supportedLocales.first,
      startLocale: Strings.supportedLocales.first,
      assetLoader: CsvAssetLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp
    extends BasePage<MainNavigationCubit, MainNavigationBuildable, MainNavigationListenable> {
  const MyApp({super.key});

  @override
  Widget builder(BuildContext context, MainNavigationBuildable state) {
    return DisplayWidget(
      key: ValueKey<String>(
        ' ${state.locale?.countryCode ?? 'US'} - ${state.locale?.languageCode ?? 'en'}',
      ),
      child: MaterialApp.router(
        title: 'IUT-eCMS',
        debugShowCheckedModeBanner: false,
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.trackpad,
            PointerDeviceKind.stylus,
            PointerDeviceKind.invertedStylus,
          },
        ),
        theme: ThemeData(useMaterial3: true),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: getIt<AppRouter>().config(),
      ),
    );
  }
}
