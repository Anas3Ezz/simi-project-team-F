import 'package:flutter/material.dart';
import 'package:my_project/screens/appointment_detailes_screen.dart';
import 'package:my_project/screens/home_screen.dart';
import 'package:my_project/screens/messages_screen.dart';
import 'package:my_project/screens/profile_screen.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/widgets/home_screen_widgets/custome_nav_item.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    const AppointmentDetailesScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  // Keep UI data separate from logic
  final List<IconData> _navIcons = const [
    Icons.home_outlined,
    Icons.access_time,
    Icons.chat_outlined,
    Icons.perm_identity_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_navIcons.length, (index) {
            return CustomNavItem(
              icon: _navIcons[index],
              isSelected: _selectedIndex == index,
              onTap: () => setState(() => _selectedIndex = index),
            );
          }),
        ),
      ),
    );
  }
}
