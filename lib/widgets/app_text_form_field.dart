import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType? input;
  final String? Function(String?)? validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.input,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool hide = isPassword(widget.input);

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
            return null;
          },
      decoration: InputDecoration(
        fillColor: const Color(0xffD9D9D9),
        filled: true,
        suffixIcon: isPassword(widget.input)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                child: hide
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility, color: Colors.blue),
              )
            : null,
        hintText: widget.hintText,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}

bool isPassword(TextInputType? input) {
  return input == TextInputType.visiblePassword;
}
