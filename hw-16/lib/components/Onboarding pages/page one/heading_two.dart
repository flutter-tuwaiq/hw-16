import 'package:flutter/widgets.dart';

class HeadingTwoPageOne extends StatelessWidget {
  const HeadingTwoPageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Text(
        "Place your order and we'll start preparing your food as you arrive.",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}

