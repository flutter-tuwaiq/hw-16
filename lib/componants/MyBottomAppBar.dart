// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'DotIndecator.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Skip',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          //here we can use dot indecator
          DotIndecator(
            activeSlide: 2,
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
