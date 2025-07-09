import 'package:dio/dio.dart' hide Headers;
import 'package:dio_security_and_caching/environment/api_config.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_datasoure.g.dart';

@module
abstract class AuthDataSourceModule {
  @singleton
  AuthDataSource provideAuthDataSource(Dio dio, Api apiBaseUrl) {
    return AuthDataSource(
      dio,
      baseUrl: apiBaseUrl.baseUrl,
    );
  }
}

@RestApi()
abstract class AuthDataSource {
  factory AuthDataSource(
    Dio dio, {
    BaseUrl baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _AuthDataSource;
}
