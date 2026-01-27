import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';

class SeeAllRowWidget extends StatelessWidget {
  const SeeAllRowWidget({
    super.key,
    required this.titleRow,
    required this.seeAll,
  });
  final String titleRow;
  final String seeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(titleRow, style: AppTextStyles.heading1),
        Spacer(),
        Text(seeAll, style: AppTextStyles.formLabel),
      ],
    );
  }
}
