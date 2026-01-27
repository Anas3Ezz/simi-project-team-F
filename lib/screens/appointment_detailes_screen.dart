import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/appointment_details_screen_header.dart';

class AppointmentDetailesScreen extends StatelessWidget {
  const AppointmentDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Appointment'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppointmentDetailsHeader(),
              SizedBox(height: 10),
              Text('Details', style: AppTextStyles.heading1),
            ],
          ),
        ),
      ),
    );
  }
}
