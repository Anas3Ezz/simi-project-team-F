import 'package:flutter/material.dart';
import 'package:my_project/screens/all_doctors_screen.dart';
import 'package:my_project/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: AppointmentDetailesScreen()));
  }
}
