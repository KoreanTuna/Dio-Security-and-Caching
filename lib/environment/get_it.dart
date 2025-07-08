import 'package:dio_security_and_caching/environment/get_it.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt locator = GetIt.instance;

@injectableInit
Future<void> configurationDependency() async {
  await locator.init();
}
