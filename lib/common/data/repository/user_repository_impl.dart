import 'package:dio_security_and_caching/common/data/models/user_model.dart';
import 'package:dio_security_and_caching/common/domain/entities/user_entity.dart';
import 'package:dio_security_and_caching/common/domain/repository/user_repository.dart';
import 'package:dio_security_and_caching/core/util/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  /// fake UserModel
  final UserModel fakeUser = UserModel(
    id: 1,
    name: 'Minwoo',
  );

  @override
  Future<Result<UserEntity>> getUser() async {
    return Result.ok(UserEntity.fromJson(fakeUser.toJson()));
  }
}
