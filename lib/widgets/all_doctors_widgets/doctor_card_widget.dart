import 'package:flutter/material.dart';
import 'package:my_project/models/doctor_model.dart';

import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';
import 'doctor_card_footer.dart';
import 'doctor_card_header.dart';

class DoctorCardWidget extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorCardWidget({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      decoration: BoxDecoration(
        color: AppColors.secondaryTeal.withValues(alpha: .3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8, top: 8),
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset(doctor.img)),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DoctorCardHeader(name: doctor.name),
                  const SizedBox(
                    child: Text(
                      "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
                      style: AppTextStyles.bodyText2,
                    ),
                  ),
                  DoctorCardFooter(doctor: doctor, rate: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
