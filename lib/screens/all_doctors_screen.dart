import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/widgets/all_doctors_widgets/doctors_list_builder.dart';
import 'package:my_project/widgets/search_bar_widget.dart';

import '../widgets/sub_screens_app_bar.dart';

class AllDoctorsScreen extends StatelessWidget {
  const AllDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const SubScreensHeader(title: "All Doctors"),
      body: Padding(
        padding: const EdgeInsetsGeometry.only(right: 20, left: 20, top: 10),
        child: Column(
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 15),
            Expanded(child: CustomScrollView(slivers: [DoctorsListBuilder()])),
          ],
        ),
      ),
    );
  }
}
