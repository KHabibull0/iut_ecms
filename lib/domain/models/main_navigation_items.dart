import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/gen/strings.dart';

class MainNavigationItems {
  final SvgGenImage icon;
  final String label;

  MainNavigationItems({
    required this.icon,
    required this.label,
  });

  static List<MainNavigationItems> get studentItems => [
        MainNavigationItems(icon: Assets.svgs.home, label: Strings.home),
        MainNavigationItems(icon: Assets.svgs.checklist, label: Strings.browseContent),
        MainNavigationItems(icon: Assets.svgs.settings, label: Strings.settings),
      ];

  static List<MainNavigationItems> get contentManagerItems => [
        MainNavigationItems(icon: Assets.svgs.home, label: 'Dashboard'),
        MainNavigationItems(icon: Assets.svgs.checklist, label: 'Manage Contents'),
        MainNavigationItems(icon: Assets.svgs.settings, label: 'Settings'),
      ];

  static List<MainNavigationItems> get adminItems => [
        MainNavigationItems(icon: Assets.svgs.home, label: 'Dashboard'),
        MainNavigationItems(icon: Assets.svgs.checklist, label: 'Browse Content'),
        MainNavigationItems(icon: Assets.svgs.users, label: 'Content Manager'),
        MainNavigationItems(icon: Assets.svgs.settings, label: 'Settings'),
      ];
}
