import 'package:dio_security_and_caching/feature/home/home_screen.dart';
import 'package:dio_security_and_caching/feature/splash/splash_screen.dart';
import 'package:dio_security_and_caching/router/router_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@module
abstract class RouterModule {
  @singleton
  GoRouter get router => GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/${RoutePath.splash}',
    routes: [
      GoRoute(
        path: '/${RoutePath.splash}',
        name: RoutePath.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/${RoutePath.home}',
        name: RoutePath.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
