import 'package:flutter/material.dart';
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
  final List<Widget> _screens = const [
    HomeScreen(),
    HomeScreen(),
    MessagesScreen(),
    HomeScreen(),
  ];

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
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_navIcons.length, (index) {
            return CustomNavItem(
              icon: _navIcons[index],
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
