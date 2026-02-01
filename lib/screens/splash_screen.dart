import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lottie/lottie.dart';
import 'package:my_project/constants/app_strings.dart';
import 'package:my_project/models/sign_in_user_model.dart';
import 'package:my_project/screens/navigation_menu.dart';
import 'package:my_project/screens/sign_in_screen.dart';

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

  void nextScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    if (Hive.box<SignInUserModel>(AppStrings.signInUserBox).isEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NavigationMenu()),
      );
    }
  }
}
