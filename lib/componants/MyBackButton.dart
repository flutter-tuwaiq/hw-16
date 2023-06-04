import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0x00ff0000).withOpacity(0.1),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
