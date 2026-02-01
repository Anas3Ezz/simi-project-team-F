import 'package:flutter/material.dart';
import 'package:my_project/screens/home_screen.dart';
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
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(title: "Welcome"),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Sign In",style: AppTextStyles.heading1),
            SizedBox(height: 10),
            Text("Welcome to our app please sign in",style: AppTextStyles.bodyText,),
            SizedBox(height: 62),
            Text("Email",style: AppTextStyles.heading1),
            SizedBox(height: 18),
            AppTextFormField(hintText: 'Enter Your Email',),
            SizedBox(height: 26),
            Text("Password",style: AppTextStyles.heading1),
            SizedBox(height: 18),
            AppTextFormField(hintText: 'Enter Your Password',suffixIcon: Icon(Icons.visibility_off),),
            SizedBox(height: 18),
            Align(
                alignment: Alignment.centerRight,
                child: Text("Forget Password",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)),
            SizedBox(height: 75),
            PrimaryButton(title: 'Sign In', onPressed: () {
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
                Text("Don’t have an account? ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.blue),))

              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
