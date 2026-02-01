import 'package:flutter/material.dart';
import 'package:my_project/models/sign_in_user_model.dart';
import 'package:my_project/screens/notification.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key, this.user});
  final SignInUserModel? user;
  String formatDisplayName(String? email) {
    if (email == null || !email.contains('@')) return "User";

    String namePart = email.split('@')[0];

    return namePart[0].toUpperCase() + namePart.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    final String displayName = formatDisplayName(user?.email);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: Image.asset("assets/images/user.jpg").image,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi,Welcome Back,",
                  style: TextStyle(fontSize: 14, color: Color(0xff858585)),
                ),
                Text(
                  displayName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),

        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
          child: Stack(
            children: [
              const Icon(Icons.notifications_none, size: 30),
              Positioned(
                right: 3,
                child: CircleAvatar(radius: 5, backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
