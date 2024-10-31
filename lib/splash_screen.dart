import 'dart:async';

import 'package:bmi_calculator/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //for setting a time
  StartTimer() async {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  void initState() {
    super.initState();
    StartTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Image.asset(
            "assets/images/logo.png",
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 2,
          ),
          const CircularProgressIndicator(
            color: Colors.green,
          )
                ],
              ),
        ));
  }
}
