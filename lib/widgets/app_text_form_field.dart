import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  const AppTextFormField({super.key, required this.hintText, this.suffixIcon, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (value){
        FocusScope.of(context).unfocus();
      },
      validator:validator??(value){
        if(value==null||value.isEmpty){
          return "This field is required";
        }

      },
      decoration: InputDecoration(
        fillColor: Color(0xffD9D9D9),
        filled: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }
}
