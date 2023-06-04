// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.width,
      required this.hight,
      required this.forward,
      required this.routeName,
      required this.buttonColor,
      required this.textColor});
  final String title;
  final double width;
  final double hight;
  final bool forward;
  final Color buttonColor;
  final Color textColor;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: width, vertical: hight)),
      onPressed: () {
        // Respond to button press
        if (forward) {
          Navigator.pushNamed(context, routeName);
        } else {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      },
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w700, color: textColor),
      ),
    );
  }
}
