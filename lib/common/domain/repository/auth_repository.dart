import 'package:dio_security_and_caching/common/domain/entities/token_entity.dart';
import 'package:dio_security_and_caching/core/util/result.dart';

abstract interface class AuthRepository {
  Future<Result<TokenEntity>> login({
    required String username,
    required String password,
  });

  Future<Result<void>> logout();
}
