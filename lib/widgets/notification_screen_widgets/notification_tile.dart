import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key, required this.isRead});
  final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isRead ? Colors.grey.shade100 : AppColors.successGreen,
        borderRadius: BorderRadius.circular(15),
        border: isRead ? Border.all(color: Colors.grey.shade300) : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.notifications_none, color: Colors.black),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "April 2023",
                  style: AppTextStyles.heading1.copyWith(
                    color: isRead ? Colors.grey : Colors.black,
                    fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Lorem ipsum dolor sit amet, adipiscing elit.",
                  style: AppTextStyles.bodyText,
                ),
              ],
            ),
          ),
          const Text(
            "15 Min",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
