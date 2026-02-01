import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.validator,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,

    required this.controller,
  });

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "This field is required";
            }
            return null;
          },
      decoration: InputDecoration(
        fillColor: AppColors.textFormFieldColor,
        filled: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        enabledBorder: _buildBorder(Colors.grey),
        focusedBorder: _buildBorder(AppColors.primaryTeal),
        errorBorder: _buildBorder(Colors.red),
        focusedErrorBorder: _buildBorder(Colors.red),
      ),
    );
  }
}
