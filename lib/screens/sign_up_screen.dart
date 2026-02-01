import 'package:flutter/material.dart';
import 'package:my_project/root.dart';
import 'package:my_project/screens/auth_screen.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/widgets/sub_screens_app_bar.dart';

import '../theme/text_styles.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/registration_options_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const SubScreensHeader(title: "Create New Account", back: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Full Name", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(hintText: 'Enter Your Name'),
                const SizedBox(height: 26),
                const Text("Password", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(
                  input: TextInputType.visiblePassword,
                  hintText: 'Enter Your Password',
                ),
                const SizedBox(height: 18),
                const Text("Email", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(
                  input: TextInputType.emailAddress,
                  hintText: 'Enter Your Email',
                ),
                const SizedBox(height: 18),
                const Text("Mobile Number", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(
                  hintText: 'Enter Your Mobile Number',
                  input: TextInputType.number,
                ),
                const SizedBox(height: 18),
                PrimaryButton(
                  title: 'Sign Up',
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (c) => const Root()),
                        (route) => false,
                      );
                    }
                  },
                ),
                const SizedBox(height: 15),
                const Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                const RegistrationOptionsWidget(
                  screen: AuthScreen(),
                  message: "Do you have an account? ",
                  option: "Sign In",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
