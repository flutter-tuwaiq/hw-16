import 'package:flutter/material.dart';

import '../spaces.dart';

class BlogImages extends StatelessWidget {
  const BlogImages({
    super.key,
    required this.image1,
    required this.image2,
  });

  final String image1;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image1,
              width: 200,
            ),
          ),
          width8,
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image2,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
