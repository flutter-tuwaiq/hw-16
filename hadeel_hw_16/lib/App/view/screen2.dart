import 'package:flutter/material.dart';

import '../components/screen2/background_design.dart';
import '../components/screen2/login_form.dart';
import '../components/screen2/logo_screen2.dart';
import '../components/spaces.dart';

class Screen2 extends StatefulWidget {
  const Screen2({
    super.key,
  });

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //------------------------- background design
          BackgroundDesign(),
          //-------------------- components
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  height48,
                  // ----------- logo
                  Logo(),
                  height96,
                  height24,
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  // ----------- login form
                  LoginForm(),
                ],
              ),
              Column(
                children: [
                  Text(
                    "No account yet ?",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Sign up now >",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  height24
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
