import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.successGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AppColors.primaryTeal),
        ),
        title: Text(title, style: AppTextStyles.heading2),
        trailing: isLogout
            ? null
            : const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
