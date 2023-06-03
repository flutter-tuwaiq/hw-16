import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/extensions/navigator.dart';

import '../../view/homepage.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            context.pushPage(const HomePage());
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        const Icon(
          Icons.favorite_outline,
          size: 30,
        )
      ],
    );
  }
}
