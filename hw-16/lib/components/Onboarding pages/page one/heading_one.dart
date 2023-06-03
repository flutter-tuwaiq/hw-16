import 'package:flutter/widgets.dart';

class HeadingOnePageOne extends StatelessWidget {
  const HeadingOnePageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 260,
      child: Text(
        // textAlign: TextAlign.left,
        "READY WHEN YOU ARE",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w900,
          fontSize: 30,
        ),
      ),
    );
  }
}
