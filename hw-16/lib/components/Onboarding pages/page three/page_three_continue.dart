import 'package:flutter/material.dart';
import 'package:hw_16/extentions/context.dart';

import '../../../screens/login_with.dart';

class PageThreeContinue extends StatelessWidget {
  const PageThreeContinue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358,
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // <-- Radius
          ),
        ),
        onPressed: () {
          context.pushPage(LoginWith());
        },
        child: const Text(
          "Continue",
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Poppins",
          ),
        ),
      ),
    );
  }
}
