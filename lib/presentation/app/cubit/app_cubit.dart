import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_cubit.dart';
import 'package:iut_ecms/presentation/app/cubit/app_state.dart';

@injectable
class AppCubit extends BaseCubit<AppBuildable, AppListenable> {
  AppCubit() : super(const AppBuildable());

  void select(Locale locale) {
    build((buildable) => buildable.copyWith(locale: locale));
  }
}
