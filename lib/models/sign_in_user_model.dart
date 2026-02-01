import 'package:hive_flutter/adapters.dart';

part 'sign_in_user_model.g.dart';

@HiveType(typeId: 0)
class SignInUserModel extends HiveObject {
  @HiveField(0)
  String email;
  @HiveField(1)
  String password;

  SignInUserModel({required this.email, required this.password});
}
