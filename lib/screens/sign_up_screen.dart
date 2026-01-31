import 'package:flutter/material.dart';
import 'package:my_project/screens/auth_screen.dart';
import 'package:my_project/screens/home_screen.dart';
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
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(title: "Create New Account"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Full Name",style: AppTextStyles.heading1),
                SizedBox(height: 18),
                AppTextFormField(hintText: 'Enter Your Name',),
                SizedBox(height: 26),
                Text("Password",style: AppTextStyles.heading1),
                SizedBox(height: 18),
                AppTextFormField(hintText: 'Enter Your Password',suffixIcon: Icon(Icons.visibility_off),),
                SizedBox(height: 18),
                Text("Email",style: AppTextStyles.heading1),
                SizedBox(height: 18),
                AppTextFormField(hintText: 'Enter Your Email',),
                SizedBox(height: 18),
                Text("Mobile Number",style: AppTextStyles.heading1),
                SizedBox(height: 18),
                AppTextFormField(hintText: 'Enter Your Mobile Number',),
                SizedBox(height: 18),
                PrimaryButton(title: 'Sign Up', onPressed: () {
                  if(formKey.currentState?.validate()??false){
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>HomeScreen()));
                  }
            
                },),
                SizedBox(height: 21),
                Center(child: Text("OR",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.grey,),)),
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
                    Text("Do you have an account? ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                    InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AuthScreen(),
                            ),
                          );
                        },
                        child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.blue),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

