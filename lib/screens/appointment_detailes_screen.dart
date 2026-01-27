import 'package:flutter/material.dart';
import 'package:my_project/widgets/appointment_details_screen_header.dart';

class AppointmentDetailesScreen extends StatelessWidget {
  const AppointmentDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Defining the teal color used in the UI
    const Color primaryTeal = Color(0xFF82C4C1);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Appointment'),
        centerTitle: true,
      ),
      body: SafeArea(child: Column(children: [AppointmentDetailsHeader()])),
    );
  }
}
