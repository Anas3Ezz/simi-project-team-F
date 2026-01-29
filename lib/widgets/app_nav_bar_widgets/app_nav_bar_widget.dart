import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import 'icon_builder.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.white,
      height: 70,
      child: NavBarBuilder(),
    );
  }
}
