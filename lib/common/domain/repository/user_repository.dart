import 'package:dio_security_and_caching/common/domain/entities/user_entity.dart';
import 'package:dio_security_and_caching/core/util/result.dart';

abstract interface class UserRepository {
  Future<Result<UserEntity>> getUser();
}
