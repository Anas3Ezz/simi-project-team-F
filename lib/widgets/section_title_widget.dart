import 'package:flutter/cupertino.dart';
import 'package:my_project/theme/text_styles.dart';

/**
 * This widget was repeated several times on other screens.
 * **/
class SectionTitle extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const SectionTitle({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.heading2),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "See All",
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff858585),
            ),
          ),
        ),
      ],
    );
  }
}
