import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/components/spaces.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // ------------------- Second Button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: const Color.fromARGB(255, 60, 188, 250),
            elevation: 0,
            minimumSize: const Size(150, 48),
          ),
          child: const Row(
            children: [
              Text(
                "Chat",
                style: TextStyle(fontSize: 20),
              ),
              width8,
              Icon(Icons.chat_bubble_outline_rounded)
            ],
          ),
        ),
        // ------------------- Second Button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: const Color.fromARGB(255, 60, 188, 250),
            elevation: 0,
            minimumSize: const Size(150, 48),
          ),
          child: const Text(
            "Add to cart",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
