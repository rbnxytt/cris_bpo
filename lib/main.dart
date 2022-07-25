import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_layout/responsive_layout/desktop.dart';
import 'package:responsive_layout/responsive_layout/mobile.dart';
import 'package:responsive_layout/responsive_layout/responsive_layout.dart';
import 'package:responsive_layout/responsive_layout/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: Lottie.asset('assets/images/loading.json'),
        nextScreen: const ResponsiveLayout(
          desktopScaffold: DesktopScaffold(),
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
        ),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
