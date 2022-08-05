import 'package:flutter/material.dart';
import 'package:responsive_layout/attendance/attendance_app.dart';
import 'package:responsive_layout/attendance/login.dart';
import 'package:responsive_layout/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'layouts/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        AttendanceApp.id: (context) => const AttendanceApp(),
        LoginPage.id: (context) => const LoginPage()
      },
    );
  }
}
