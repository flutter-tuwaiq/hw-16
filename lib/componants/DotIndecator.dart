// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  DotIndecator({super.key, required this.activeSlide});
  final dotSize = 10.0;
  final int activeSlide;
  final Color nonActiveDot = Colors.grey.shade200;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        activeSlide == 1
            ? Icon(
                Icons.circle,
                color: Colors.red,
                size: dotSize,
              )
            : Icon(
                Icons.circle,
                color: nonActiveDot,
                size: dotSize,
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: activeSlide == 2
              ? Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: dotSize,
                )
              : Icon(
                  Icons.circle,
                  color: nonActiveDot,
                  size: dotSize,
                ),
        ),
        activeSlide == 3
            ? Icon(
                Icons.circle,
                color: Colors.red,
                size: dotSize,
              )
            : Icon(
                Icons.circle,
                color: nonActiveDot,
                size: dotSize,
              ),
      ],
    );
  }
}
