import 'package:dio_security_and_caching/common/data/models/user_model.dart';
import 'package:dio_security_and_caching/util/result.dart';

abstract interface class UserRepository {
  Future<Result<UserModel>> getUser();
}
