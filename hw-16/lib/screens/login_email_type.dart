import 'package:flutter/material.dart';
import 'package:hw_16/components/app_bar.dart';
import 'package:hw_16/constants/spaces.dart';

import '../components/my_textField.dart';
import '../components/next_button.dart';

class LoginEmailType extends StatefulWidget {
  const LoginEmailType({super.key});

  @override
  State<LoginEmailType> createState() => _LoginState();
}

class _LoginState extends State<LoginEmailType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customBar(context),
      floatingActionButton: const NextButton(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LOG IN OR SIGN UP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Poppins",
                ),
              ),
              kVSpace16,
              Text(
                "Log in with email address",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                height: 56,
              ),
              Text(
                "Email (required)",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
              kVSpace8,
              MyTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
