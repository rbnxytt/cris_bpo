import 'package:flutter/material.dart';
import 'package:responsive_layout/attendance/attendance_app.dart';

import 'layouts/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        AttendanceApp.id: (context) => const AttendanceApp()
      },
    );
  }
}
