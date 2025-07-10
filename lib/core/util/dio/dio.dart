import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_security_and_caching/core/util/logger.dart';
import 'package:dio_security_and_caching/core/util/secure_storage_util.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:crypto/crypto.dart';

@module
abstract class DioModule {
  @singleton
  Dio createClientDio() =>
      Dio()
        ..options = BaseOptions(
          responseType: ResponseType.json,
          contentType: 'application/json',
        )
        ..interceptors.add(
          DioCacheInterceptor(options: getCacheOption(MemCacheStore())),
        )
        ..interceptors.add(
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: false,
          ),
        );
}

class CustomInterceptor extends Interceptor {
  CustomInterceptor(this.storage);
  final SecureStorageUtil storage;

  // api 요청 보낼때
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return super.onRequest(options, handler);
  }

  // api 응답 받을때

  // api 통신 중 에러 발생했을때
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
      '[ERROR] ${err.requestOptions.method}] ${err.requestOptions.uri}  StatusCode:${err.response?.statusCode}, ${err.message}, ${err.type}',
    );
    if (err.type == DioExceptionType.connectionError) {
      logger.e('[Dio] Connection Error');
      return handler.reject(err);
    }

    return handler.reject(err);
  }
}

/// 캐시 옵션 설정 함수.
CacheOptions getCacheOption(MemCacheStore store) {
  return CacheOptions(
    store: store,
    policy: CachePolicy.request,
    hitCacheOnErrorCodes: const [500],
    maxStale: const Duration(days: 1),
    priority: CachePriority.high,
    keyBuilder: ({required Uri url, Map<String, String>? headers}) {
      /// URI로 캐시 키 생성
      final String uriPart = url.toString();
      return sha256.convert(utf8.encode(uriPart)).toString();
    },

    cipher: null,
    // allowPostMethod: true,
  );
}
