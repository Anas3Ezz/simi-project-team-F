import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: Image.asset(Assets.user.path).image,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi,Welcome Back,",
                  style: TextStyle(fontSize: 14, color: Color(0xff858585)),
                ),
                Text(
                  "John Doe William",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),

        Stack(
          children: [
            const Icon(Icons.notifications_none, size: 30),
            Positioned(
              right: 0,
              child: CircleAvatar(radius: 6, backgroundColor: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
