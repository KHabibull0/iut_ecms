// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:iut_ecms/core/di/app_module.dart' as _i425;
import 'package:iut_ecms/core/di/shared_prefs.dart' as _i617;
import 'package:iut_ecms/core/widgets/display/display.dart' as _i472;
import 'package:iut_ecms/core/widgets/display/display_impl.dart' as _i327;
import 'package:iut_ecms/data/auth/auth_repository_impl.dart' as _i779;
import 'package:iut_ecms/data/manager/manager_dashboard_repository_impl.dart'
    as _i234;
import 'package:iut_ecms/data/splash/splash_repository_impl.dart' as _i991;
import 'package:iut_ecms/data/user/settings/settings_repository_impl.dart'
    as _i522;
import 'package:iut_ecms/domain/models/storage/shared_prefs.dart' as _i180;
import 'package:iut_ecms/domain/models/storage/storage.dart' as _i597;
import 'package:iut_ecms/domain/repos/auth_repository.dart' as _i655;
import 'package:iut_ecms/domain/repos/manager/manager_dashboard_repository.dart'
    as _i8;
import 'package:iut_ecms/domain/repos/socket_manager.dart' as _i491;
import 'package:iut_ecms/domain/repos/splash_repository.dart' as _i369;
import 'package:iut_ecms/domain/repos/user/settings_repository.dart' as _i959;
import 'package:iut_ecms/presentation/common/auth/register/cubit/register_cubit.dart'
    as _i37;
import 'package:iut_ecms/presentation/common/auth/sign_in/cubit/sign_in_cubit.dart'
    as _i165;
import 'package:iut_ecms/presentation/common/main_navigation_page/cubit/main_navigation_cubit.dart'
    as _i295;
import 'package:iut_ecms/presentation/common/splash/cubit/splash_cubit.dart'
    as _i473;
import 'package:iut_ecms/presentation/manager/contents/manage/manage_articles/cubit/manage_articles_cubit.dart'
    as _i981;
import 'package:iut_ecms/presentation/manager/contents/manage/manage_contents/cubit/manage_contents_cubit.dart'
    as _i875;
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_books/cubit/manage_e_books_cubit.dart'
    as _i141;
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_cubit.dart'
    as _i748;
import 'package:iut_ecms/presentation/manager/contents/manage/manage_majors/cubit/manage_majors_cubit.dart'
    as _i886;
import 'package:iut_ecms/presentation/manager/contents/manage/manage_subjects/cubit/manage_subjects_cubit.dart'
    as _i416;
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_cubit.dart'
    as _i786;
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_cubit.dart'
    as _i442;
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_cubit.dart'
    as _i178;
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_cubit.dart'
    as _i844;
import 'package:iut_ecms/presentation/manager/contents/update/update_subjects/cubit/update_subjects_cubit.dart'
    as _i429;
import 'package:iut_ecms/presentation/manager/dashboard/cubit/manager_home_cubit.dart'
    as _i594;
import 'package:iut_ecms/presentation/manager/settings/cubit/manager_settings_cubit.dart'
    as _i763;
import 'package:iut_ecms/presentation/user/content/user_articles_page/cubit/user_articles_cubit.dart'
    as _i1012;
import 'package:iut_ecms/presentation/user/content/user_content_type/cubit/user_content_type_cubit.dart'
    as _i648;
import 'package:iut_ecms/presentation/user/content/user_e_book_page/cubit/user_e_book_cubit.dart'
    as _i259;
import 'package:iut_ecms/presentation/user/content/user_letters_page/cubit/user_letters_cubit.dart'
    as _i202;
import 'package:iut_ecms/presentation/user/content/user_majors/cubit/user_majors_cubit.dart'
    as _i17;
import 'package:iut_ecms/presentation/user/content/user_subjects_page/cubit/user_subjects_cubit.dart'
    as _i270;
import 'package:iut_ecms/presentation/user/dashboard/cubit/user_home_cubit.dart'
    as _i601;
import 'package:iut_ecms/presentation/user/settings/cubit/user_settings_cubit.dart'
    as _i1054;
import 'package:logger/logger.dart' as _i974;
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
    gh.factory<_i270.UserSubjectsCubit>(() => _i270.UserSubjectsCubit());
    gh.factory<_i648.UserContentTypeCubit>(() => _i648.UserContentTypeCubit());
    gh.factory<_i1012.UserArticlesCubit>(() => _i1012.UserArticlesCubit());
    gh.factory<_i202.UserLettersCubit>(() => _i202.UserLettersCubit());
    gh.factory<_i259.UserEBookCubit>(() => _i259.UserEBookCubit());
    gh.factory<_i17.UserMajorsCubit>(() => _i17.UserMajorsCubit());
    gh.factory<_i601.UserHomeCubit>(() => _i601.UserHomeCubit());
    gh.factory<_i763.ManagerSettingsCubit>(() => _i763.ManagerSettingsCubit());
    gh.factory<_i295.MainNavigationCubit>(() => _i295.MainNavigationCubit());
    gh.factory<_i981.ManageArticlesCubit>(() => _i981.ManageArticlesCubit());
    gh.factory<_i875.ManageContentsCubit>(() => _i875.ManageContentsCubit());
    gh.factory<_i141.ManageEBooksCubit>(() => _i141.ManageEBooksCubit());
    gh.factory<_i748.ManageELettersCubit>(() => _i748.ManageELettersCubit());
    gh.factory<_i416.ManageSubjectsCubit>(() => _i416.ManageSubjectsCubit());
    gh.factory<_i844.UpdateMajorsCubit>(() => _i844.UpdateMajorsCubit());
    gh.factory<_i429.UpdateSubjectsCubit>(() => _i429.UpdateSubjectsCubit());
    gh.factory<_i442.UpdateEBooksCubit>(() => _i442.UpdateEBooksCubit());
    gh.factory<_i786.UpdateArticlesCubit>(() => _i786.UpdateArticlesCubit());
    gh.factory<_i178.UpdateELettersCubit>(() => _i178.UpdateELettersCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i597.Storage>(
      () => _i597.Storage.create(),
      preResolve: true,
    );
    gh.factory<_i369.SplashRepository>(() => _i991.SplashRepositoryImpl());
    gh.singleton<_i472.Display>(() => _i327.DisplayImpl());
    gh.factory<_i959.SettingsRepository>(() => _i522.SettingsRepositoryImpl());
    gh.factory<_i180.SharedPrefs>(() =>
        _i180.SharedPrefs(sharedPreferences: gh<_i460.SharedPreferences>()));
    gh.factory<_i655.AuthRepository>(
        () => _i779.AuthRepositoryImpl(gh<_i491.SocketManager>()));
    gh.factory<_i8.ManagerDashboardRepository>(
        () => _i234.ManagerDashboardRepositoryImpl(gh<_i491.SocketManager>()));
    gh.factory<_i165.SignInCubit>(
        () => _i165.SignInCubit(gh<_i655.AuthRepository>()));
    gh.factory<_i37.RegisterCubit>(
        () => _i37.RegisterCubit(gh<_i655.AuthRepository>()));
    gh.factory<_i473.SplashCubit>(
        () => _i473.SplashCubit(gh<_i369.SplashRepository>()));
    gh.factory<_i594.ManagerHomeCubit>(
        () => _i594.ManagerHomeCubit(gh<_i8.ManagerDashboardRepository>()));
    gh.factory<_i886.ManageMajorsCubit>(
        () => _i886.ManageMajorsCubit(gh<_i8.ManagerDashboardRepository>()));
    gh.factory<_i1054.UserSettingsCubit>(
        () => _i1054.UserSettingsCubit(gh<_i959.SettingsRepository>()));
    return this;
  }
}

class _$SharedPreferencesModule extends _i617.SharedPreferencesModule {}

class _$AppModule extends _i425.AppModule {}
