import 'package:flutter/material.dart';
import '../../extensions/navigator.dart';

import '../../view/screen2.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 300,
        ),
        ElevatedButton(
          onPressed: () {
            context.pushPage(const Screen2());
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: const Size(60, 60),
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 60, 188, 250)),
          child: const Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}
