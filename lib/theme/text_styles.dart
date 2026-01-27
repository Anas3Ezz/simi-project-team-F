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
    fontSize: 14,
    fontWeight: FontWeight.w500, // Medium weight
    color: AppColors.secondaryTeal, // Using your secondaryTeal (0xFF82C4C1)
  );

  // 4. Primary Buttons ("Sign In", "Book an Appointment")
  static const TextStyle primaryButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white, // Using your white (0xFFFFFFFF)
  );

  // 5. High-Emphasis Price ("$120.00" on the Payment screen)
  static const TextStyle priceLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white, // White on the teal background
  );

  // 6. Highlighted Price ("$120.00" on the Appointment details)
  static const TextStyle priceHighlight = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryTeal, // Using your primaryTeal (0xFF0097B2)
  );

  // 7. Input Text & Form Labels ("Full Name", "Enter Your Email")
  static const TextStyle formLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0xFF4F4F4F), // Standard Gray for descriptions
    height: 1.4,
  );
}
