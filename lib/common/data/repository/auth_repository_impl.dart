import 'package:dio_security_and_caching/common/data/models/token_model.dart';
import 'package:dio_security_and_caching/common/domain/repository/auth_repository.dart';
import 'package:dio_security_and_caching/util/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
final class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Result<TokenModel>> login({
    required String username,
    required String password,
  }) async {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> logout() async {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
