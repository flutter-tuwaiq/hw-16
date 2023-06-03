import 'package:flutter/material.dart';

class HeadingTwoPageThree extends StatelessWidget {
  const HeadingTwoPageThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Text(
        "More cheese? Less pickle? Just tap the customise button to make your dream order.",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}

