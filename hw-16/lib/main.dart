import 'package:flutter/material.dart';
import 'package:hw_16/screens/Onboard_page_one.dart';
import 'package:hw_16/screens/Onboard_page_three.dart';
import 'package:hw_16/screens/Onboard_page_two.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: const [
            OnboardPageOne(),
            OnboardPageTwo(),
            OnboardPageThree(),
          ],
        ),
      ),
    );
  }
}
