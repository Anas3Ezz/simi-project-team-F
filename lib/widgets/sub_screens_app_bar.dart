import 'package:flutter/material.dart';

import '../theme/text_styles.dart';

class SubScreensHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;
  const SubScreensHeader({super.key, required this.title, this.back = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: back ? const Icon(Icons.arrow_back_ios_new_outlined) : null,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      title: Text(title, style: AppTextStyles.subTitles),
      centerTitle: true,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
