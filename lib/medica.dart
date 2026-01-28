import 'package:flutter/material.dart';
import 'package:my_project/screens/appointment_detailes_screen.dart';

class Medica extends StatelessWidget {
  const Medica({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppointmentDetailesScreen(),
    );
  }
}
