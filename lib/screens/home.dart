import 'package:flutter/material.dart';
import 'package:my_project/screens/appointment_detailes_screen.dart';

import '../widgets/search_par.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchPar()));
  }
}
