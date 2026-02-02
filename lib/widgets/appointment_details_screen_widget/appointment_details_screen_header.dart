import 'package:flutter/material.dart';
import 'package:my_project/models/doctor_model.dart';
import 'package:my_project/theme/app_colors.dart';

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
            child: Image.asset(doctor.img, width: 90, height: 90),
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
                            fontSize: 17,
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
                        _buildActionIcon(
                          Icons.chat_bubble_outline,
                          AppColors.primaryTeal,
                        ),
                        const SizedBox(width: 5),
                        _buildActionIcon(
                          Icons.phone_outlined,
                          AppColors.primaryTeal,
                        ),
                        const SizedBox(width: 5),
                        _buildActionIcon(
                          Icons.videocam_outlined,
                          AppColors.primaryTeal,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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

Widget _buildActionIcon(IconData icon, Color color) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.15),
      shape: BoxShape.circle,
    ),
    child: Icon(icon, size: 18, color: const Color(0xff334444)),
  );
}
