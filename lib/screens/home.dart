import 'package:flutter/material.dart';
import 'package:my_project/widgets/search_bar.dart';

import '../widgets/home_screen_widgets/home_screen_app_bar.dart';
import '../widgets/home_screen_widgets/slider_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.only(right: 20, left: 20, top: 50),
        child: Column(
          children: [
            HomeScreenAppBar(),
            const SizedBox(height: 32),
            SearchBar2(),
            const SizedBox(height: 32),
            SliderBuilder(),
          ],
        ),
      ),
    );
  }
}
