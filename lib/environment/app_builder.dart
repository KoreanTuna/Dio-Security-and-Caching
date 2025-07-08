import 'package:dio_security_and_caching/environment/get_it.dart';

abstract class AppBuilder {
  AppBuilder._();

  Future<void> initialize() async {
    await configurationDependency();
  }
}
