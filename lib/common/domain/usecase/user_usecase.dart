import 'package:dio_security_and_caching/common/domain/entities/user_entity.dart';
import 'package:dio_security_and_caching/common/domain/repository/user_repository.dart';
import 'package:dio_security_and_caching/core/util/result.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class UserUsecase {
  UserUsecase(this._userRepository);
  final UserRepository _userRepository;

  /// User Cache
  UserEntity? _cachedUser;

  Future<Result<UserEntity>> getUser({bool forceRefresh = false}) async {
    if (!forceRefresh && _cachedUser != null) {
      return Result.ok(_cachedUser!);
    }

    final Result<UserEntity> userResult = await _userRepository.getUser();
    if (userResult is Ok<UserEntity>) {
      _cachedUser = userResult.value;
    }

    return _userRepository.getUser();
  }
}
