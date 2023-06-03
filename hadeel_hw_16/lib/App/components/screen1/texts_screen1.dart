import 'package:flutter/material.dart';

import '../spaces.dart';

class TextsScreen1 extends StatelessWidget {
  const TextsScreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 50),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your food ready\nto be delivered",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          height24,
          Text(
            "We will send soon\nyour food is warm",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
