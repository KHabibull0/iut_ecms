// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:iut_ecms/core/di/app_module.dart' as _i425;
import 'package:iut_ecms/core/di/shared_prefs.dart' as _i617;
import 'package:iut_ecms/core/widgets/display/display.dart' as _i472;
import 'package:iut_ecms/core/widgets/display/display_impl.dart' as _i327;
import 'package:iut_ecms/data/auth/auth_api.dart' as _i968;
import 'package:iut_ecms/data/auth/auth_repository_impl.dart' as _i779;
import 'package:iut_ecms/data/settings/settings_repository_impl.dart' as _i873;
import 'package:iut_ecms/data/splash/splash_repository_impl.dart' as _i991;
import 'package:iut_ecms/domain/models/auth_interceptor/auth_interceptor.dart'
    as _i106;
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart' as _i180;
import 'package:iut_ecms/domain/models/storage/storage.dart' as _i597;
import 'package:iut_ecms/domain/repos/auth_repository.dart' as _i655;
import 'package:iut_ecms/domain/repos/settings_repository.dart' as _i162;
import 'package:iut_ecms/domain/repos/splash_repository.dart' as _i369;
import 'package:iut_ecms/presentation/common/auth/register/cubit/register_cubit.dart'
    as _i37;
import 'package:iut_ecms/presentation/common/auth/sign_in/cubit/sign_in_cubit.dart'
    as _i165;
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_cubit.dart'
    as _i295;
import 'package:iut_ecms/presentation/common/splash/cubit/splash_cubit.dart'
    as _i473;
import 'package:iut_ecms/presentation/user/user_content/cubit/user_content_cubit.dart'
    as _i536;
import 'package:iut_ecms/presentation/user/user_home/cubit/user_home_cubit.dart'
    as _i183;
import 'package:iut_ecms/presentation/user/user_settings/cubit/user_settings_cubit.dart'
    as _i528;
import 'package:iut_ecms/presentation/user/user_subjects_page/cubit/user_subjects_cubit.dart'
    as _i220;
import 'package:logger/logger.dart' as _i974;
import 'package:logger/web.dart' as _i120;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i220.UserSubjectsCubit>(() => _i220.UserSubjectsCubit());
    gh.factory<_i536.UserContentCubit>(() => _i536.UserContentCubit());
    gh.factory<_i183.UserHomeCubit>(() => _i183.UserHomeCubit());
    gh.factory<_i165.SignInCubit>(() => _i165.SignInCubit());
    gh.factory<_i37.RegisterCubit>(() => _i37.RegisterCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i597.Storage>(
      () => _i597.Storage.create(),
      preResolve: true,
    );
    gh.factory<_i369.SplashRepository>(() => _i991.SplashRepositoryImpl());
    gh.singleton<_i472.Display>(() => _i327.DisplayImpl());
    gh.factory<_i162.SettingsRepository>(() => _i873.SettingsRepositoryImpl());
    gh.factory<_i968.AuthApi>(() => _i968.AuthApi(gh<_i361.Dio>()));
    gh.factory<_i655.AuthRepository>(
        () => _i779.AuthRepositoryImpl(gh<_i968.AuthApi>()));
    gh.factory<_i528.UserSettingsCubit>(
        () => _i528.UserSettingsCubit(gh<_i162.SettingsRepository>()));
    gh.factory<_i180.SharedPrefs>(() =>
        _i180.SharedPrefs(sharedPreferences: gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i106.AuthInterceptor>(() => _i106.AuthInterceptor(
          gh<_i597.Storage>(),
          gh<_i120.Logger>(),
        ));
    gh.factory<_i295.MainNavigationCubit>(
        () => _i295.MainNavigationCubit(gh<_i180.SharedPrefs>()));
    gh.factory<_i473.SplashCubit>(
        () => _i473.SplashCubit(gh<_i369.SplashRepository>()));
    return this;
  }
}

class _$SharedPreferencesModule extends _i617.SharedPreferencesModule {}

class _$AppModule extends _i425.AppModule {}
