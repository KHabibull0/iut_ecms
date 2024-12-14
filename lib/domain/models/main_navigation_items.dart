import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/local_keys.g.dart';

class MainNavigationItems {
  final SvgGenImage icon;
  final String label;

  MainNavigationItems({
    required this.icon,
    required this.label,
  });

  static List<MainNavigationItems> get items => [
        MainNavigationItems(icon: Assets.svgs.home, label: LocaleKeys.home),
        MainNavigationItems(icon: Assets.svgs.checklist, label: LocaleKeys.browseContent),
        MainNavigationItems(icon: Assets.svgs.settings, label: LocaleKeys.settings),
      ];
}
