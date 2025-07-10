// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:dio_security_and_caching/common/data/datasource/auth_datasoure.dart'
    as _i1000;
import 'package:dio_security_and_caching/common/data/repository/auth_repository_impl.dart'
    as _i110;
import 'package:dio_security_and_caching/common/data/repository/user_repository_impl.dart'
    as _i942;
import 'package:dio_security_and_caching/common/domain/repository/auth_repository.dart'
    as _i1013;
import 'package:dio_security_and_caching/common/domain/repository/user_repository.dart'
    as _i836;
import 'package:dio_security_and_caching/common/domain/usecase/auth_usecase.dart'
    as _i145;
import 'package:dio_security_and_caching/common/domain/usecase/user_usecase.dart'
    as _i410;
import 'package:dio_security_and_caching/environment/api_config.dart' as _i367;
import 'package:dio_security_and_caching/router/router.dart' as _i121;
import 'package:dio_security_and_caching/util/dio/dio.dart' as _i213;
import 'package:dio_security_and_caching/util/secure_storage_util.dart'
    as _i866;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _qa = 'qa';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final secureStorageModule = _$SecureStorageModule();
    final dioModule = _$DioModule();
    final routerModule = _$RouterModule();
    final apiModule = _$ApiModule();
    final authDataSourceModule = _$AuthDataSourceModule();
    gh.singleton<_i558.FlutterSecureStorage>(
      () => secureStorageModule.createSecureStorage(),
    );
    gh.singleton<_i361.Dio>(() => dioModule.createClientDio());
    gh.singleton<_i583.GoRouter>(() => routerModule.router);
    gh.lazySingleton<_i836.UserRepository>(() => _i942.UserRepositoryImpl());
    gh.singleton<_i866.SecureStorageUtil>(
      () => _i866.SecureStorageUtil(gh<_i558.FlutterSecureStorage>()),
    );
    gh.singleton<_i367.Api>(
      () => apiModule.createDevBaseUrl(),
      registerFor: {_dev},
    );
    gh.singleton<_i367.Api>(
      () => apiModule.createQaBaseUrl(),
      registerFor: {_qa},
    );
    gh.lazySingleton<_i410.UserUsecase>(
      () => _i410.UserUsecase(gh<_i836.UserRepository>()),
    );
    gh.lazySingleton<_i1013.AuthRepository>(() => _i110.AuthRepositoryImpl());
    gh.singleton<_i367.Api>(
      () => apiModule.createProdBaseUrl(),
      registerFor: {_prod},
    );
    gh.singleton<_i1000.AuthDataSource>(
      () => authDataSourceModule.provideAuthDataSource(
        gh<_i361.Dio>(),
        gh<_i367.Api>(),
      ),
    );
    gh.lazySingleton<_i145.AuthUsecase>(
      () => _i145.AuthUsecase(gh<_i1013.AuthRepository>()),
    );
    return this;
  }
}

class _$SecureStorageModule extends _i866.SecureStorageModule {}

class _$DioModule extends _i213.DioModule {}

class _$RouterModule extends _i121.RouterModule {}

class _$ApiModule extends _i367.ApiModule {}

class _$AuthDataSourceModule extends _i1000.AuthDataSourceModule {}
