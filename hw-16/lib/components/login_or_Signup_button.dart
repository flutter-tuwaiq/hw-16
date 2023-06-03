import 'package:flutter/material.dart';

class LoginOrSignupButton extends StatelessWidget {
  const LoginOrSignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 358,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // <-- Radius
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Log in or Sign up',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
