import 'package:flutter/material.dart';
import 'package:my_project/widgets/search_bar.dart';

import '../widgets/home_screen_widgets/category_list_builder.dart';
import '../widgets/home_screen_widgets/home_screen_app_bar.dart';
import '../widgets/home_screen_widgets/slider_builder.dart';
import '../widgets/section_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.only(right: 20, left: 20, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeScreenAppBar(),
              const SizedBox(height: 32),
              SearchBar2(),
              const SizedBox(height: 32),
              SliderBuilder(),
              const SizedBox(height: 18),
              SectionTitle(title: 'Categories'),
              const SizedBox(height: 20),
              SizedBox(height: 80, child: CategoryListBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
