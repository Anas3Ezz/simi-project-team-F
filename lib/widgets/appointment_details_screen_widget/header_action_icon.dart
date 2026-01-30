import 'package:flutter/material.dart';

class HeaderActionIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const HeaderActionIcon({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.15),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 16, color: const Color(0xff334444)),
      ),
    );
  }
}
