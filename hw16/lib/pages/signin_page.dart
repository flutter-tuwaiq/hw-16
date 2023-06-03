import 'package:flutter/material.dart';
import 'package:hw16/components/app_bar.dart';
import 'package:hw16/pages/forgot_password_page.dart';
import 'package:hw16/pages/menu_page.dart';
import 'package:hw16/pages/signup_page.dart';
import '../components/button.dart';
import '../components/email_label.dart';
import '../components/password_label.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar,
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
              child: Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 18, 0, 0),
              child: Text(
                'Welcome back',
                style: TextStyle(
                    fontSize: 16, color: Colors.grey, fontFamily: 'Poppins'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
              child: EmailLapel(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
              child: PasswordLapel(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(132, 24, 0, 0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPassword();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(242, 37, 80, 107),
                    fontSize: 16,
                  ),
                ),
              ),
            ), 
            const Padding(
              padding: EdgeInsets.fromLTRB(300, 58, 0, 0),
              child: Button(pageName: MenuPage(),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 168, 0, 0),
              child: Row(
                children: [
                const Text('New member?',style: TextStyle(color: Colors.grey),),
                TextButton(onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignupPage();
                      },
                    ),
                  );
                }, 
                child: const Text("Sign up",style: TextStyle(color: Color.fromARGB(242, 37, 80, 107),),)),
              ],),
            )
          ],
        ),]
      ),
    );
  }
}
