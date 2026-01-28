import 'package:flutter/material.dart';

import '../../screens/appointment_detailes_screen.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';

class DoctorCardFooter extends StatelessWidget {
  final double rate;
  const DoctorCardFooter({super.key, required this.rate});

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
                builder: (context) => AppointmentDetailesScreen(),
              ),
            );
          },
          child: const Text("Book", style: AppTextStyles.primaryButton),
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Color(0xffF89603)),
            Text("$rate", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
