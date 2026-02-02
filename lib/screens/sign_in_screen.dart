import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/constants/app_strings.dart';
import 'package:my_project/models/sign_in_user_model.dart';
import 'package:my_project/screens/navigation_menu.dart';
import 'package:my_project/screens/sign_up_screen.dart';
import 'package:my_project/widgets/app_validator_widget.dart';

import '../theme/text_styles.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/custom_text_form_widget.dart';
import '../widgets/primary_button_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  bool isObscure = true;
  void signIn() async {
    var myBox = Hive.box<SignInUserModel>(AppStrings.signInUserBox);
    await myBox.clear();
    myBox
        .add(
          SignInUserModel(
            email: emailController.text,
            password: passwordController.text,
          ),
        )
        .then((c) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const NavigationMenu()),
            (route) => false,
          );
        })
        .catchError((error) {
          if (kDebugMode) {
            print('Error $error');
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Welcome"),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: _autoValidateMode,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Sign In", style: AppTextStyles.heading1),
                const SizedBox(height: 10),
                const Text(
                  "Welcome to our app please sign in",
                  style: AppTextStyles.bodyText,
                ),
                const SizedBox(height: 40),
                const Text("Email", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                AppTextFormField(
                  validator: AppValidators.validateEmail,
                  controller: emailController,
                  hintText: 'Enter Your Email',
                ),
                const SizedBox(height: 26),
                const Text("Password", style: AppTextStyles.heading1),
                const SizedBox(height: 18),
                AppTextFormField(
                  controller: passwordController,
                  obscureText: isObscure,
                  hintText: 'Enter Your Password',

                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  validator: AppValidators.validatePassword,
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
                      signIn();
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
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
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

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
