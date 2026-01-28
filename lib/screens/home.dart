import 'package:flutter/material.dart';
import 'package:my_project/models/doctor_model.dart';
import 'package:my_project/screens/all_doctors_screen.dart';
import 'package:my_project/widgets/all_doctors_widgets/doctor_card_widget.dart';
import 'package:my_project/widgets/search_bar_widget.dart';

import '../widgets/app_nav_bar_widgets/app_nav_bar_widget.dart';
import '../widgets/home_screen_widgets/category_list_builder.dart';
import '../widgets/home_screen_widgets/home_screen_app_bar.dart';
import '../widgets/home_screen_widgets/slider_builder.dart';
import '../widgets/section_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsetsGeometry.only(right: 20, left: 20, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeScreenAppBar(),
              const SizedBox(height: 32),
              const SearchBarWidget(),
              const SizedBox(height: 32),
              const SliderBuilder(),
              const SizedBox(height: 18),
              const SectionTitle(title: 'Categories '),
              const SizedBox(height: 20),
              SizedBox(height: 80, child: CategoryListBuilder()),
              const SizedBox(height: 20),
              SectionTitle(
                title: "All Doctors",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllDoctorsScreen()),
                  );
                },
              ),
              const SizedBox(height: 10),
              const DoctorCardWidget(
                doctor: DoctorModel(
                  name: "Jak",
                  img: "assets/images/doctor1.png",
                  rate: 5,
                  specialist: "denteeth",
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}
