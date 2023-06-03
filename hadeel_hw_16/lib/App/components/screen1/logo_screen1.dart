import 'package:flutter/material.dart';

import '../spaces.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        width24,
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 4),
          child: Image(image: AssetImage('lib/App/assets/images/logo.png')),
        ),
        Text(
          "Need",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Food",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
