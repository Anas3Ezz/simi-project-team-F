import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';

class DoctorCardHeader extends StatefulWidget {
  final String name;
  const DoctorCardHeader({super.key, required this.name});

  @override
  State<DoctorCardHeader> createState() => _DoctorCardHeaderState();
}

class _DoctorCardHeaderState extends State<DoctorCardHeader> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.name, style: AppTextStyles.heading2),
        GestureDetector(
          child: Icon(
            favorite ? Icons.favorite : Icons.favorite_border,
            color: AppColors.primaryTeal,
          ),
          onTap: () {
            setState(() {
              favorite = !favorite;
            });
          },
        ),
      ],
    );
  }
}
