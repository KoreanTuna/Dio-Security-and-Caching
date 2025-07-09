import 'package:dio_security_and_caching/common/data/models/token_model.dart';
import 'package:dio_security_and_caching/util/result.dart';

abstract interface class AuthRepository {
  Future<Result<TokenModel>> login({
    required String username,
    required String password,
  });

  Future<Result<void>> logout();
}
