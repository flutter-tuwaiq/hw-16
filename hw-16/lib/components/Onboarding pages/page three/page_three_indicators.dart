import 'package:flutter/material.dart';

import '../../../constants/spaces.dart';

class PageThreeIndicators extends StatelessWidget {
  const PageThreeIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[350],
          ),
          height: 60,
          width: 6,
        ),
        kVSpace8,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[350],
          ),
          height: 60,
          width: 6,
        ),
        kVSpace8,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          height: 60,
          width: 6,
        ),
      ],
    );
  }
}