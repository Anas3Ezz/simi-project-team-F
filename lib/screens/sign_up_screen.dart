import 'package:flutter/material.dart';
import 'package:my_project/screens/auth_screen.dart';
import 'package:my_project/screens/root.dart';

import '../theme/text_styles.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/auth_app_bar.dart';
import '../widgets/primary_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AuthAppBar(title: "Create New Account"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Form(
            key: formKey,
            autovalidateMode: _autoValidateMode,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Text("Full Name", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    keyboardType: TextInputType.name,
                    hintText: 'Enter Your Name',
                  ),
                  SizedBox(height: 26),
                  Text("Password", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    hintText: 'Enter Your Password',
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  SizedBox(height: 18),
                  Text("Email", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter Your Email',
                  ),
                  SizedBox(height: 18),
                  Text("Mobile Number", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    keyboardType: TextInputType.phone,
                    hintText: 'Enter Your Mobile Number',
                  ),
                  SizedBox(height: 18),
                  PrimaryButton(
                    title: 'Sign Up',
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (c) => Root()),
                        );
                      } else {
                        _autoValidateMode = AutovalidateMode.onUserInteraction;
                      }
                    },
                  ),
                  SizedBox(height: 21),
                  Center(
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/Facebook_Logo.png"),
                      ),
                      SizedBox(width: 35),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/google_logo.png"),
                      ),
                    ],
                  ),
                  SizedBox(height: 38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do you have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AuthScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
