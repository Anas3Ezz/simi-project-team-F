import 'package:flutter/cupertino.dart';
import 'package:my_project/theme/text_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final String seeAll;
  const SectionTitle({
    super.key,
    required this.title,
    this.onTap,
    this.seeAll = 'See All',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.heading1),
        GestureDetector(
          onTap: onTap,
          child: Text(seeAll, style: AppTextStyles.formLabel),
        ),
      ],
    );
  }
}
