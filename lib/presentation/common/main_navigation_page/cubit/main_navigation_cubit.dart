import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_state.dart';

@injectable
class MainNavigationCubit extends BaseCubit<MainNavigationBuildable, MainNavigationListenable> {
  MainNavigationCubit(this._sharedPrefs) : super(const MainNavigationBuildable()) {
    _initializePageIndex();
  }

  final SharedPrefs _sharedPrefs;

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
}
