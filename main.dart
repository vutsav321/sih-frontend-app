import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishi_sahayak/screen/landing_screen.dart';
import 'package:krishi_sahayak/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // home: LandingScreen(),
    );
  }
}
