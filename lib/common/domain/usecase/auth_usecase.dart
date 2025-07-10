import 'package:dio_security_and_caching/common/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class AuthUsecase {
  AuthUsecase(this._authRepository);
  final AuthRepository _authRepository;
}
