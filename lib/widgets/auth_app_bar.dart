import 'package:flutter/material.dart';

import '../theme/text_styles.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AuthAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.subTitles),
      centerTitle: true,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}