import 'package:flutter/material.dart';
import 'package:my_project/models/doctor_model.dart';

import '../../screens/appointment_detailes_screen.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';

class DoctorCardFooter extends StatelessWidget {
  final DoctorModel doctor;
  final double rate;
  const DoctorCardFooter({super.key, required this.rate, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.primaryTeal,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AppointmentDetailesScreen(doctor: doctor),
              ),
            );
          },
          child: const Text("Book", style: AppTextStyles.primaryButton),
        ),
        Row(
          children: [
            const Icon(Icons.star, color: AppColors.ratingGold),
            Text("$rate", style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
