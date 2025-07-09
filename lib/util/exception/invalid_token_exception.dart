import 'package:dio_security_and_caching/util/exception/base/base_exception.dart';

class InvalidTokenException extends BaseException {
  InvalidTokenException() : super(message: 'Invalid token');
}
