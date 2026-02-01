import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/profile_screen_widget/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        title: Text("Profile", style: AppTextStyles.screenTitles),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
            const SizedBox(height: 15),
            Text("John Doe William", style: AppTextStyles.heading2),
            const SizedBox(height: 30),
            // Menu Items
            const ProfileTile(icon: Icons.history, title: "History"),
            const ProfileTile(
              icon: Icons.person_outline,
              title: "Personal Details",
            ),
            const ProfileTile(
              icon: Icons.location_on_outlined,
              title: "Location",
            ),
            const ProfileTile(
              icon: Icons.payment_outlined,
              title: "Payment Method",
            ),
            const ProfileTile(icon: Icons.settings_outlined, title: "Settings"),
            const ProfileTile(icon: Icons.help_outline, title: "Help"),
            const ProfileTile(
              icon: Icons.logout,
              title: "Logout",
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }
}
