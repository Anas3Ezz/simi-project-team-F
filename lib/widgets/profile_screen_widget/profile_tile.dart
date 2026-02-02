import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;
  final void Function()? onTap;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
              : const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
          onTap: onTap,
        ),
      ),
    );
  }
}
