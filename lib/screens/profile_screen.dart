import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/constants/app_strings.dart';
import 'package:my_project/models/sign_in_user_model.dart';
import 'package:my_project/screens/sign_in_screen.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/profile_screen_widget/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.user});
  final SignInUserModel? user;
  String formatDisplayName(String? email) {
    if (email == null || !email.contains('@')) return "User";

    String namePart = email.split('@')[0];

    return namePart[0].toUpperCase() + namePart.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    final String displayName = formatDisplayName(user?.email);
    final String firstLetter = displayName.isNotEmpty ? displayName[0] : "U";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile", style: AppTextStyles.screenTitles),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primaryTeal,
              child: Text(
                firstLetter,
                style: AppTextStyles.primaryButton.copyWith(fontSize: 50),
              ),
            ),
            const SizedBox(height: 15),
            Text(displayName, style: AppTextStyles.heading2),
            const SizedBox(height: 30),
            // Menu Items
            ProfileTile(icon: Icons.history, title: "History"),
            ProfileTile(icon: Icons.person_outline, title: "Personal Details"),
            ProfileTile(icon: Icons.location_on_outlined, title: "Location"),
            ProfileTile(icon: Icons.payment_outlined, title: "Payment Method"),
            ProfileTile(icon: Icons.settings_outlined, title: "Settings"),
            ProfileTile(icon: Icons.help_outline, title: "Help"),
            ProfileTile(
              icon: Icons.logout,
              title: "Logout",
              isLogout: true,
              onTap: () {
                Hive.box<SignInUserModel>(AppStrings.signInUserBox)
                    .clear()
                    .then((c) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                        (route) => false,
                      );
                    })
                    .catchError((e) {
                      print("ERROR");
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
