import 'package:dio_security_and_caching/presentation/common/widget/base/base_screen.dart';
import 'package:dio_security_and_caching/router/router_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends BaseScreen {
  const SplashScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.goNamed(RoutePath.home);
        });

        return null;
      },
      [],
    );

    return Center(child: CircularProgressIndicator());
  }
}
