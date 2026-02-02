import 'package:flutter/material.dart';

class RegistrationOptionsWidget extends StatelessWidget {
  final String option;
  final String message;
  final Widget screen;

  const RegistrationOptionsWidget({
    super.key,
    required this.screen,
    required this.message,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Image.asset("assets/images/Facebook_Logo.png"),
            ),
            const SizedBox(width: 35),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Image.asset("assets/images/google_logo.png"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen),
                );
              },
              child: Text(
                option,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
