import 'package:flutter/material.dart';
import 'package:hw_16/componants/pages/Routes.dart';
import 'componants/pages/StartPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes(),
      home: const StartPage(),
    );
  }
}
