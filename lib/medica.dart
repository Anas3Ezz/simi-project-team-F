import 'package:flutter/material.dart';
import 'package:my_project/screens/splash_screen.dart';

class Medica extends StatelessWidget {
  const Medica({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
