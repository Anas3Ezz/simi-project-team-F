import 'package:flutter/material.dart';
import 'package:my_project/theme/app_colors.dart';

import '../../gen/assets.gen.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.only(left: 15, right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryTeal,
      ),
      height: 170,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: 200,
                  margin: const EdgeInsetsGeometry.only(left: 150),
                  child: Image.asset(Assets.doctorsImages.doctor2.path),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Medical Center",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                        "orem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit ,",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
