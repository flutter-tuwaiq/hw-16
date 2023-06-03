import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Image.asset(
              'lib/App/assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Text(
          "Need",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        const Text(
          "Food",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ],
    );
  }
}
