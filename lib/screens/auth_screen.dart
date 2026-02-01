import 'package:flutter/material.dart';
import 'package:my_project/screens/root.dart';
import 'package:my_project/screens/sign_up_screen.dart';

import '../theme/text_styles.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/auth_app_bar.dart';
import '../widgets/primary_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final formKey = GlobalKey<FormState>();

  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AuthAppBar(title: "Welcome"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
          child: Form(
            key: formKey,
            autovalidateMode: _autoValidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign In", style: AppTextStyles.heading1),
                const SizedBox(height: 10),
                Text(
                  "Welcome to our app please sign in",
                  style: AppTextStyles.bodyText,
                ),
                const SizedBox(height: 40),
                Text("Email", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(hintText: 'Enter Your Email'),
                const SizedBox(height: 26),
                Text("Password", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                const AppTextFormField(
                  obscureText: true,
                  hintText: 'Enter Your Password',
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      "Forget Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 75),
                PrimaryButton(
                  title: 'Sign In',
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      // Logic for successful login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => const Root()),
                      );
                    } else {
                      setState(() {
                        _autoValidateMode = AutovalidateMode.onUserInteraction;
                      });
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/images/Facebook_Logo.png"),
                    ),
                    const SizedBox(width: 35),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/images/google_logo.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 38),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
