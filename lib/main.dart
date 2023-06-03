import 'package:flutter/material.dart';
import 'package:tamang/Forgot_Pass_Screen.dart';
import 'package:tamang/Home_Page_Screen.dart';
import 'package:tamang/SignIn_Screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const HomePageScreen(),
        '/signin': (context) => const SignInScreen(),
        '/forgot': (context) => const ForgotPassScreen(),
      },
      home: const HomePageScreen(),
    );
  }
}
