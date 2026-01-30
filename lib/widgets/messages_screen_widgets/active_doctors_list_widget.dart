import 'package:flutter/material.dart';
import 'package:my_project/widgets/messages_screen_widgets/doctor_avatar.dart';

class ActiveDoctorsList extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDoctorSelected;

  const ActiveDoctorsList({
    super.key,
    required this.selectedIndex,
    required this.onDoctorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return DoctorAvatar(
            image: 'assets/images/Rectangle 35.png',
            isOnline: true,
            isSelected: selectedIndex == index,
            onTap: () => onDoctorSelected(index),
          );
        },
      ),
    );
  }
}
