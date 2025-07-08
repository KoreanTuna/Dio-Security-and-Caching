// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:dio_security_and_caching/router/router.dart' as _i121;
import 'package:dio_security_and_caching/util/dio/dio.dart' as _i213;
import 'package:dio_security_and_caching/util/secure_storage_util.dart'
    as _i866;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    final routerModule = _$RouterModule();
    gh.singleton<_i866.SecureStorageUtil>(() => _i866.SecureStorageUtil());
    gh.singleton<_i361.Dio>(() => dioModule.createClientDio());
    gh.singleton<_i583.GoRouter>(() => routerModule.router);
    return this;
  }
}

class _$DioModule extends _i213.DioModule {}

class _$RouterModule extends _i121.RouterModule {}
