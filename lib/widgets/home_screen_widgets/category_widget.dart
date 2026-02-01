import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 29,
        vertical: 25,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.secondaryTeal,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(category, style: AppTextStyles.category),
    );
  }
}
