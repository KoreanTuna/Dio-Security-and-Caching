import 'package:dio_security_and_caching/common/data/models/user_model.dart';
import 'package:dio_security_and_caching/common/domain/repository/user_repository.dart';
import 'package:dio_security_and_caching/util/result.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  @override
  Future<Result<UserModel>> getUser() async {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
