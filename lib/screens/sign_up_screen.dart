import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:my_project/constants/app_strings.dart';
import 'package:my_project/models/sign_in_user_model.dart';
import 'package:my_project/screens/navigation_menu.dart';
import 'package:my_project/screens/sign_in_screen.dart';
import 'package:my_project/widgets/app_validator_widget.dart';

import '../theme/text_styles.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/custom_text_form_widget.dart';
import '../widgets/primary_button_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
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
          print('Error $error');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Create New Account"),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Text("Full Name", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    validator: AppValidators.validateName,
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    hintText: 'Enter Your Name',
                  ),
                  SizedBox(height: 26),
                  Text("Email", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    validator: AppValidators.validateEmail,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter Your Email',
                  ),
                  SizedBox(height: 18),
                  Text("Password", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
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
                  SizedBox(height: 18),
                  Text("Mobile Number", style: AppTextStyles.heading1),
                  SizedBox(height: 18),
                  AppTextFormField(
                    validator: AppValidators.validatePhone,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    hintText: 'Enter Your Mobile Number',
                  ),
                  SizedBox(height: 18),
                  PrimaryButton(
                    title: 'Sign Up',
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        signIn();
                      }
                    },
                  ),
                  const SizedBox(height: 21),
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
                  const SizedBox(height: 19),
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
                  const SizedBox(height: 38),
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
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: AppTextStyles.subTitles.copyWith(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
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
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
