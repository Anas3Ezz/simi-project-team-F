import 'package:flutter/material.dart';
import 'package:my_project/root.dart';
import 'package:my_project/screens/sign_up_screen.dart';
import 'package:my_project/theme/app_colors.dart';

import '../theme/text_styles.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/registration_options_widget.dart';
import '../widgets/sub_screens_app_bar.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const SubScreensHeader(title: "Welcome", back: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Sign In", style: AppTextStyles.heading1),
                const SizedBox(height: 10),
                const Text(
                  "Welcome to our app please sign in",
                  style: AppTextStyles.bodyText,
                ),
                const SizedBox(height: 30),
                const Text("Email", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(
                  hintText: 'Enter Your Email',
                  input: TextInputType.emailAddress,
                ),
                const SizedBox(height: 26),
                const Text("Password", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(
                  input: TextInputType.visiblePassword,
                  hintText: 'Enter Your Password',
                ),
                const SizedBox(height: 18),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 45),
                PrimaryButton(
                  title: 'Sign In',
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
                const SizedBox(height: 21),
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
                  screen: SignUp(),
                  message: "Don’t have an account? ",
                  option: "Sign Up",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
