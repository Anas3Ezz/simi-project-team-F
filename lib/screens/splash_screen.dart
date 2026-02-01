import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_project/screens/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Lottie.asset('assets/images/medica logo.json')],
        ),
      ),
    );
  }

  void nextScreen() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => AuthScreen()),
      );
    });
  }
}
