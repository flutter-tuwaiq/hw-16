import 'package:flutter/material.dart';

class HeadingTwoPageTwo extends StatelessWidget {
  const HeadingTwoPageTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 320,
      child: Text(
        "Collect your order contact-free at a restaurant or head straight to drive-thru with your code.",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}