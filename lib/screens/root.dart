import 'package:flutter/material.dart';
import 'package:my_project/models/nav_item_model.dart';
import 'package:my_project/screens/home_screen.dart';
import 'package:my_project/theme/app_colors.dart';

import 'appointment_detailes_screen.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedIcon = 0;

  List<NavItemModel> icons = [
    NavItemModel(icon: Icons.home_outlined, screen: HomeScreen()),
    NavItemModel(icon: Icons.access_time, screen: AppointmentDetailesScreen()),
    NavItemModel(
      icon: Icons.chat_outlined,
      screen: AppointmentDetailesScreen(),
    ),
    NavItemModel(icon: Icons.perm_identity_rounded, screen: HomeScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: icons[selectedIcon].screen,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (i) {
            return GestureDetector(
              child: selectedIcon == i
                  ? Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryTeal,
                      ),
                      child: Icon(icons[i].icon, color: AppColors.white),
                    )
                  : SizedBox(width: 50, height: 50, child: Icon(icons[i].icon)),
              onTap: () {
                selectedIcon = i;
                setState(() {});
              },
            );
          }),
        ),
      ),
    );
  }
}
