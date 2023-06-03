import 'package:flutter/material.dart';
import 'package:hw16/components/app_bar.dart';
import 'package:hw16/components/button.dart';
import 'package:hw16/components/email_label.dart';
import 'package:hw16/pages/signin_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar,
       body: ListView(
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
              padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Text(
                'Enter your email address',
                style: TextStyle(
                    fontSize: 16, color: Colors.grey, fontFamily: 'Poppins'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 38, 0, 0),
              child: EmailLapel(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(300, 48, 0, 0),
              child: Button(pageName: SigninPage()),
            )
            ],
          )
        ],
       ),
    );
  }
}
