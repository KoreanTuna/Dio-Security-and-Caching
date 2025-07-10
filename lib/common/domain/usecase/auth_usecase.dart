import 'package:dio_security_and_caching/common/domain/entities/token_entity.dart';
import 'package:dio_security_and_caching/common/domain/repository/auth_repository.dart';
import 'package:dio_security_and_caching/core/constant/secure_storage_key_constant.dart';
import 'package:dio_security_and_caching/core/util/exception/base/base_exception.dart';
import 'package:dio_security_and_caching/core/util/result.dart';
import 'package:dio_security_and_caching/core/util/secure_storage_util.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class AuthUsecase {
  AuthUsecase(
    this._authRepository,
    this._secureStorageUtil,
  );
  final AuthRepository _authRepository;
  final SecureStorageUtil _secureStorageUtil;

  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    final Result<TokenEntity> loginResult = await _authRepository.login(
      username: username,
      password: password,
    );

    if (loginResult is Error) {
      return Result.error(BaseException(message: '로그인 실패'));
    }

    final TokenEntity tokenEntity = (loginResult as Ok<TokenEntity>).value;
    final Result<void> saveResult = await _saveTokens(tokenEntity);
    if (saveResult is Error) {
      return saveResult;
    }
    return Result.ok(null);
  }

  Future<Result<void>> _saveTokens(TokenEntity tokenEntity) async {
    try {
      await _secureStorageUtil.write(
        key: SecureStorageKeyConstant.accessToken,
        value: tokenEntity.accessToken,
      );
      await _secureStorageUtil.write(
        key: SecureStorageKeyConstant.refreshToken,
        value: tokenEntity.refreshToken,
      );

      return Result.ok(null);
    } catch (e) {
      return Result.error(BaseException(message: '토큰 저장 실패'));
    }
  }
}
