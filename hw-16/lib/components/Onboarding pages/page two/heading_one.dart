import 'package:flutter/material.dart';

class HeadingOnePageTwo extends StatelessWidget {
  const HeadingOnePageTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 260,
      child: Text(
        // textAlign: TextAlign.left,
        "CHOOSE HOW TO COLLECT",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w900,
          fontSize: 30,
        ),
      ),
    );
  }
}