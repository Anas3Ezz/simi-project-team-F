import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';

class AppointmentDetailsHeader extends StatelessWidget {
  const AppointmentDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Doctor Profile Image
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              'assets/images/Rectangle 35.png', // Replace with actual image asset or URL
              width: 90,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),

          // 2. Info Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row: Name and Action Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dr.Upul',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Denteeth',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryTeal.withValues(alpha: 0.8),
                            // color: primaryTeal.withValues(alpha: 0.8),
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
                        const SizedBox(width: 8),
                        _buildActionIcon(
                          Icons.phone_outlined,
                          AppColors.primaryTeal,
                        ),
                        const SizedBox(width: 8),
                        _buildActionIcon(
                          Icons.videocam_outlined,
                          AppColors.primaryTeal,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Bottom Row: Payment Label and Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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

// Helper method for the circular action buttons
Widget _buildActionIcon(IconData icon, Color color) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.15),
      shape: BoxShape.circle,
    ),
    child: Icon(
      icon,
      size: 18,
      color: const Color(0xff334444), // Slightly darker for contrast
    ),
  );
}
