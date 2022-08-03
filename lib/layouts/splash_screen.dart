import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_layout/layouts/responsive_layout.dart';
import 'desktop.dart';
import 'mobile.dart';
import 'tablet.dart';

class SplashScreen extends StatelessWidget {
  static const String id = '/';
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Lottie.asset('assets/images/loading.json'),
      nextScreen: const ResponsiveLayout(
        desktopScaffold: DesktopScaffold(),
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
      ),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
