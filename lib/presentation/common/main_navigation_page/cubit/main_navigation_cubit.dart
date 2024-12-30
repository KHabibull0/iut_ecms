import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/core/di/injection.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';
import 'package:iut_ecms/domain/repos/socket_manager.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_state.dart';

@injectable
class MainNavigationCubit extends BaseCubit<MainNavigationBuildable, MainNavigationListenable> {
  MainNavigationCubit() : super(const MainNavigationBuildable()) {
    _initializePageIndex();
  }

  final SharedPrefs _sharedPrefs = getIt<SharedPrefs>();
  final SocketManager _socketManager = getIt<SocketManager>();

  void changePageIndex(int index) {
    build((buildable) => buildable.copyWith(pageIndex: index));
    _sharedPrefs.setMainPageIndex(index);
  }

  void _initializePageIndex() {
    final savedIndex = _sharedPrefs.getMainPageIndex();
    build((buildable) => buildable.copyWith(pageIndex: savedIndex));
  }

  void select(Locale locale) {
    build((buildable) => buildable.copyWith(locale: locale));
  }

  Tokens getTokens() {
    final result = _sharedPrefs.getTokens();
    return result;
  }
}
