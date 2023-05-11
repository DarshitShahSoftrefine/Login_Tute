import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_tutorial/second_screen.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.mobile_friendly_rounded,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Flutter Onboarding",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Build your onboarding flow in seconds",
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
