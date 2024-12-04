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
import 'package:iut_ecms/core/widgets/display/display.dart' as _i472;
import 'package:iut_ecms/core/widgets/display/display_impl.dart' as _i327;
import 'package:iut_ecms/data/auth/auth_api.dart' as _i968;
import 'package:iut_ecms/data/auth/auth_repository_impl.dart' as _i779;
import 'package:iut_ecms/domain/models/auth_interceptor/auth_interceptor.dart'
    as _i106;
import 'package:iut_ecms/domain/models/storage/storage.dart' as _i597;
import 'package:iut_ecms/domain/repos/auth_repository.dart' as _i655;
import 'package:logger/logger.dart' as _i974;
import 'package:logger/web.dart' as _i120;

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
    final appModule = _$AppModule();
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i597.Storage>(
      () => _i597.Storage.create(),
      preResolve: true,
    );
    gh.singleton<_i472.Display>(() => _i327.DisplayImpl());
    gh.factory<_i968.AuthApi>(() => _i968.AuthApi(gh<_i361.Dio>()));
    gh.factory<_i655.AuthRepository>(
        () => _i779.AuthRepositoryImpl(gh<_i968.AuthApi>()));
    gh.lazySingleton<_i106.AuthInterceptor>(() => _i106.AuthInterceptor(
          gh<_i597.Storage>(),
          gh<_i120.Logger>(),
        ));
    return this;
  }
}

class _$AppModule extends _i425.AppModule {}
