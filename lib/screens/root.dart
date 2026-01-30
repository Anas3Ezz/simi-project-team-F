import 'package:flutter/material.dart';
import 'package:my_project/screens/home_screen.dart';
import 'package:my_project/screens/messages_screen.dart';
import 'package:my_project/theme/app_colors.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;

  // 1. Keep screens in a list.
  // We use these in IndexedStack to keep their state alive.
  final List<Widget> _screens = const [
    HomeScreen(),
    HomeScreen(), // Replace with your AllDoctorsScreen
    MessagesScreen(),
    HomeScreen(), // Replace with your ProfileScreen
  ];

  // 2. Separate the icon data from the Widgets for better readability
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

class CustomNavItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomNavItem({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? AppColors.primaryTeal : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.grey,
          size: 28,
        ),
      ),
    );
  }
}
