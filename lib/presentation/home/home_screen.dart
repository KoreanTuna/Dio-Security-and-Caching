import 'package:dio_security_and_caching/presentation/common/widget/base/base_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseScreen {
  const HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(child: Text('HOME'));
  }
}
