import 'package:flutter/material.dart';
import 'package:my_project/screens/messages_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: MessagesScreen()));
  }
}
