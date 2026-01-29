import 'package:flutter/material.dart';
import 'package:my_project/screens/messages_screen.dart';

class Medica extends StatelessWidget {
  const Medica({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagesScreen(),
    );
  }
}
