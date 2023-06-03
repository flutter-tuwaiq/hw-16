import 'package:flutter/material.dart';

import '../spaces.dart';
import 'login_button.dart';
import 'textfield_design.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          // --------------- username
          CustomTextField(
            myHintText: 'Enter Your Name',
          ),
          height16,
          // --------------- password
          CustomTextField(
            myHintText: 'Enter Your password',
          ),
          height16,
          Text(
            "Forgot password?",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          height24,
          // --------------- button
          LoginButton(),

          //------
        ],
      ),
    );
  }
}
