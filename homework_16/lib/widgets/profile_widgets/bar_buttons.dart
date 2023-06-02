import 'package:flutter/material.dart';

import '../../consts/chat_colors.dart';

class BarButtons extends StatelessWidget {
  const BarButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            elevation: 0,
            backgroundColor: appMaincolor,
            foregroundColor: Colors.black,
            onPressed: () {},
            child: const Icon(
              Icons.keyboard_backspace,
              size: 30,
            ),
          ),
          FloatingActionButton(
            elevation: 0,
            backgroundColor: appMaincolor,
            foregroundColor: Colors.black,
            onPressed: () {},
            child: const Icon(
              Icons.expand_circle_down_rounded,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}
