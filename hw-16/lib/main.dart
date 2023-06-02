import 'package:flutter/material.dart';
import 'package:hw_16/constants/spaces.dart';
import 'package:hw_16/screens/Onboard_one.dart';
import 'package:hw_16/screens/Onboard_three.dart';
import 'package:hw_16/screens/Onboard_two.dart';

import 'components/app_bar.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: OnboardOne(),
      ),
    );
  }
}
