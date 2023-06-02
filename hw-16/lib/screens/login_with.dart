import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_16/constants/spaces.dart';

import '../components/app_bar.dart';
import '../components/email_type.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "LOG IN OR SIGN UP",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              kVSpace16,
              const Text(
                'By logging in, i agree with McDonald\'s ',
                style: TextStyle(fontSize: 16),
              ),
              kVSpace8,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Terms & conditions',
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 16),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    const TextSpan(
                      text: ' and ',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Privacy Statement',
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              kVSpace64,
              const EmailType(),
            ],
          ),
        ),
      ),
    );
  }
}
