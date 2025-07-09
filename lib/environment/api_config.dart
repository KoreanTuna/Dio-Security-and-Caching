import 'package:injectable/injectable.dart';

typedef BaseUrl = String;

class Api {
  Api(this.baseUrl);
  final BaseUrl baseUrl;
}

@module
abstract class ApiModule {
  @Singleton(env: ['dev'])
  Api createDevBaseUrl() => Api(ApiConfig.devUrl);

  @Singleton(env: ['qa'])
  Api createQaBaseUrl() => Api(ApiConfig.qaUrl);

  @Singleton(env: ['prod'])
  Api createProdBaseUrl() => Api(ApiConfig.prodUrl);
}

abstract class ApiConfig {
  ApiConfig._();
  static const String prodUrl = 'https://fake.co.kr';
  static const String qaUrl = 'https://qa.fake.co.kr';
  static const String devUrl = 'https://dev.fake.co.kr';
}
