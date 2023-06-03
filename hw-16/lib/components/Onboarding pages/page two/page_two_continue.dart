import 'package:flutter/material.dart';
import 'package:hw_16/extentions/context.dart';

import '../../../screens/Onboard_page_three.dart';

class PageTwoContinue extends StatelessWidget {
  const PageTwoContinue({
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
          context.pushPage(OnboardPageThree());
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
