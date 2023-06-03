import 'package:flutter/material.dart';

class Image1 extends StatelessWidget {
  const Image1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      margin: const EdgeInsets.fromLTRB(20, 32, 16, 32),
      child: const Image(
        image: AssetImage('lib/App/assets/images/pic1.png'),
      ),
    );
  }
}
