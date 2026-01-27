import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';
import 'package:my_project/theme/text_styles.dart';
import 'package:my_project/widgets/search_bar_widget.dart';

import '../gen/assets.gen.dart';
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
              SearchBarWidget(),
              const SizedBox(height: 32),
              SliderBuilder(),
              const SizedBox(height: 18),
              SectionTitle(title: 'Categories'),
              const SizedBox(height: 20),
              SizedBox(height: 80, child: CategoryListBuilder()),
              const SizedBox(height: 20),
              SectionTitle(title: "All Doctors"),
              const SizedBox(height: 10),
              Container(
                height: 162,
                decoration: BoxDecoration(
                  color: AppColors.secondaryTeal.withValues(alpha: .3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, top: 8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(Assets.doctorsImages.doctor4.path),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("data", style: AppTextStyles.heading2),
                                Icon(
                                  Icons.favorite,
                                  color: AppColors.primaryTeal,
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Text(
                                "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
                                style: AppTextStyles.bodyText,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: AppColors.primaryTeal,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Book",
                                    style: AppTextStyles.primaryButton,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Color(0xffF89603)),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),

              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
