import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/extensions/navigator.dart';
import 'package:hadeel_hw_16/App/view/homepage.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushPage(const HomePage());
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: const Color.fromARGB(255, 60, 188, 250),
        elevation: 0,
        minimumSize: const Size(340, 40),
      ),
      child: const Text(
        "Login",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
