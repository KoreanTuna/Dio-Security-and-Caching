import 'package:dio_security_and_caching/environment/app_builder.dart';
import 'package:dio_security_and_caching/environment/get_it.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async {
  await AppBuilder.initialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: locator<GoRouter>());
  }
}
