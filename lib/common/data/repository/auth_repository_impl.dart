import 'package:dio_security_and_caching/common/data/datasource/auth_datasoure.dart';
import 'package:dio_security_and_caching/common/domain/entities/token_entity.dart';
import 'package:dio_security_and_caching/common/domain/repository/auth_repository.dart';
import 'package:dio_security_and_caching/core/util/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
final class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDataSource);

  final AuthDataSource _authDataSource;
  @override
  Future<Result<TokenEntity>> login({
    required String username,
    required String password,
  }) async {
    /// FAKE Data
    return Result.ok(
      TokenEntity(
        accessToken: 'fake_access_token',
        refreshToken: 'fake_refresh_token',
      ),
    );
  }

  @override
  Future<Result<void>> logout() async {
    /// FAKE Data
    return Result.ok(null);
  }
}
