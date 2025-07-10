import 'package:dio_security_and_caching/common/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class UserUsecase {
  UserUsecase(this._userRepository);
  final UserRepository _userRepository;
}
