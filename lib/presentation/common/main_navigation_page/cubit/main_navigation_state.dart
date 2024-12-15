import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_navigation_state.freezed.dart';

@freezed
class MainNavigationBuildable with _$MainNavigationBuildable {
  const factory MainNavigationBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(0) int pageIndex,
    Locale? locale,
  }) = _MainNavigationBuildable;
}

@freezed
class MainNavigationListenable with _$MainNavigationListenable {
  const factory MainNavigationListenable() = _MainNavigationListenable;
}
