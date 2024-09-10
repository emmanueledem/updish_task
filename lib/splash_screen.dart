import 'package:flutter/material.dart';
import 'package:updish_task/core/constants/app_assets.dart';
import 'package:updish_task/core/navigators/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _pageSetup() async {
    final navigator = Navigator.of(context);

    Future.delayed(
        const Duration(seconds: 2),
        () => navigator.pushReplacementNamed(
              RouteName.productscreen,
            ));
  }

  @override
  void initState() {
    _pageSetup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Image.asset(AppAssets.splashImage),
        ),
      ),
    );
  }
}
