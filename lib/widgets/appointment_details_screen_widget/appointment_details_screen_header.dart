import 'package:flutter/material.dart';
import 'package:my_project/models/doctor_model.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/widgets/appointment_details_screen_widget/header_action_icon.dart';

class AppointmentDetailsHeader extends StatelessWidget {
  final DoctorModel doctor;
  const AppointmentDetailsHeader({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(doctor.img, width: 90, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr.${doctor.name}',
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          doctor.specialist,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryTeal.withValues(alpha: 0.8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        HeaderActionIcon(
                          icon: Icons.chat_bubble_outline,
                          color: AppColors.primaryTeal,
                        ),
                        const SizedBox(width: 8),
                        HeaderActionIcon(
                          icon: Icons.phone_outlined,
                          color: AppColors.primaryTeal,
                        ),
                        const SizedBox(width: 8),
                        HeaderActionIcon(
                          icon: Icons.videocam_outlined,
                          color: AppColors.primaryTeal,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$120.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryTeal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
