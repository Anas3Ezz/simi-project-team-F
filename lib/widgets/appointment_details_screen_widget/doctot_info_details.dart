import 'package:flutter/material.dart';
import 'package:my_project/theme/text_styles.dart';

class DoctorInfoDetails extends StatelessWidget {
  const DoctorInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Details', style: AppTextStyles.heading1),
        SizedBox(height: 15),
        Text(
          'Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.',
          style: AppTextStyles.bodyText,
        ),
      ],
    );
  }
}
