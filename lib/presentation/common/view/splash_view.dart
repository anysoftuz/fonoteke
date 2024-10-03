import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).whenComplete(() {
      context.go(AppRoutePath.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Center(
            child: AppIcons.logo.svg(),
          ),
          const Positioned(
            bottom: 56,
            child: Column(
              children: [
                SpinKitCircle(
                  size: 52,
                  color: white,
                ),
                SizedBox(height: 10),
                Text(
                  '© All rights reserved',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
