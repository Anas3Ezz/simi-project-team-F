import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType input;
  final String? Function(String?)? validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.validator,
    this.input = TextInputType.text,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool hide = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hide ? true : false,
      keyboardType: widget.input,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      validator:
          widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "This field is required";
            }
          },
      decoration: InputDecoration(
        fillColor: Color(0xffD9D9D9),
        filled: true,
        suffixIcon: isPassword(widget.input)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                child: hide
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility, color: Colors.blue),
              )
            : null,
        hintText: widget.hintText,
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

bool isPassword(TextInputType input) {
  return input == TextInputType.visiblePassword;
}
