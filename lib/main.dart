import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/constants/app_strings.dart';
import 'package:my_project/medica.dart';
import 'package:my_project/models/sign_in_user_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SignInUserModelAdapter());
  await Hive.openBox<SignInUserModel>(AppStrings.signInUserBox);

  runApp(const Medica());
}
