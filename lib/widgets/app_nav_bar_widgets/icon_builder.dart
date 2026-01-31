import 'package:flutter/material.dart';
import 'package:my_project/models/nav_item_model.dart';
import 'package:my_project/screens/all_doctors_screen.dart';
import 'package:my_project/screens/home_screen.dart';
import 'package:my_project/theme/app_colors.dart';

import '../../screens/appointment_detailes_screen.dart';

class NavBarBuilder extends StatefulWidget {
  const NavBarBuilder({super.key});

  @override
  State<NavBarBuilder> createState() => _NavBarBuilderState();
}

class _NavBarBuilderState extends State<NavBarBuilder> {
  static int selectedIcon = 0;

  static List<int> prev = []; //stack to save last move

  List<NavItemModel> icons = [
    NavItemModel(icon: Icons.home_outlined, screen: HomeScreen()),
    NavItemModel(icon: Icons.access_time, screen: AllDoctorsScreen()),
    NavItemModel(
      icon: Icons.chat_outlined,
      screen: AppointmentDetailesScreen(),
    ),
    NavItemModel(icon: Icons.perm_identity_rounded, screen: HomeScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
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
            prev.add(selectedIcon);

            if (selectedIcon != i) {
              // to avoid repat the same screen in the stack
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    selectedIcon = i;
                    return icons[i].screen;
                  },
                ),
              ).then((onValue) {
                // back to prev screen on pop
                if (prev.isNotEmpty) {
                  selectedIcon = prev.last;
                  prev.removeLast();
                }
              });
            }
          },
        );
      }),
    );
  }
}
