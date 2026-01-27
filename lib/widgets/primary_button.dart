import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Use double.infinity to fill the width by default
      width: width ?? double.infinity,
      height: 56, // Standard height for mobile buttons
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryTeal,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(title, style: AppTextStyles.primaryButton),
      ),
    );
  }
}
