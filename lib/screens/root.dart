import 'package:flutter/material.dart';
import 'package:my_project/models/nav_item_model.dart';
import 'package:my_project/screens/home_screen.dart';
import 'package:my_project/screens/messages_screen.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/widgets/home_screen_widgets/custome_nav_item.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;

  final List<NavItemModel> _screensList = [
    const NavItemModel(icon: Icons.home_outlined, screen: HomeScreen()),
    const NavItemModel(icon: Icons.access_time, screen: HomeScreen()),
    const NavItemModel(icon: Icons.chat_outlined, screen: MessagesScreen()),
    const NavItemModel(icon: Icons.perm_identity_rounded, screen: HomeScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screensList.map((item) => item.screen).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_screensList.length, (index) {
            return CustomNavItem(
              icon: _screensList[index].icon,
              isSelected: _selectedIndex == index,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
