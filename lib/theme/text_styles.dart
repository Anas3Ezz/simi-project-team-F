import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';

class AppTextStyles {
  // 1. Main Titles ("Sign In", "All Doctors", "Payment")
  static const TextStyle heading1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // 2. Doctor Names / Section Headers ("Dr. Upul", "Categories")
  static const TextStyle heading2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // 3. Specialty Labels ("Denteeth", "Therapist")
  static const TextStyle specialtyLabel = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500, // Medium weight
    color: AppColors.secondaryTeal,
  );

  // 4. Primary Buttons ("Sign In", "Book an Appointment")
  static const TextStyle primaryButton = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  // 5. High-Emphasis Price ("$120.00" on the Payment screen)
  static const TextStyle priceLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  // 6. Highlighted Price ("$120.00" on the Appointment details)
  static const TextStyle screenTitles = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTeal,
  );

  // 7. Input Text & Form Labels ("Full Name", "Enter Your Email")
  static const TextStyle formLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  // 8. SubScreens's header(All Doctors ,Appointment)
  static const TextStyle subTitles = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryTeal,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0xFF4F4F4F),
    height: 1.4,
  );

  //Category text
  static const TextStyle category = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  // Doctor card description
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: Color(0xFF4F4F4F),
    height: 1.4,
  );
}
