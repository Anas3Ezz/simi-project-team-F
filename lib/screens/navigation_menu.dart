import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/constants/app_strings.dart';
import 'package:my_project/models/doctor_model.dart';
import 'package:my_project/models/sign_in_user_model.dart';
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
  DoctorModel doctor = const DoctorModel(
    name: "Mikle",
    img: "assets/images/doctor3.png",
    rate: 5,
    specialist: "specialist",
  );
  int _selectedIndex = 0;
  final SignInUserModel? user = Hive.box<SignInUserModel>(
    AppStrings.signInUserBox,
  ).getAt(0);

  List<Widget> get _screens => [
    HomeScreen(),
    AppointmentDetailesScreen(doctor: doctor), //Just to fill blank.
    const MessagesScreen(),
    ProfileScreen(user: user),
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
              onTap: () => setState(() => _selectedIndex = index),
            );
          }),
        ),
      ),
    );
  }
}
//keep a live