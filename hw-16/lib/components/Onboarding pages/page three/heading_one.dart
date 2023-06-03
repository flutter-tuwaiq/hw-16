import 'package:flutter/material.dart';

class HeadingOnePageThree extends StatelessWidget {
  const HeadingOnePageThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 315,
      child: Text(
        // textAlign: TextAlign.left,
        "GERKIN OR GERKOUT?",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w900,
          fontSize: 30,
        ),
      ),
    );
  }
}
