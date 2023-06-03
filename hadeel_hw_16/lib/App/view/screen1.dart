import 'package:flutter/material.dart';

import '../components/screen1/button_screen1.dart';
import '../components/screen1/image_screen1.dart';
import '../components/screen1/logo_screen1.dart';
import '../components/screen1/texts_screen1.dart';
import '../components/spaces.dart';

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height48,
            // ------------ logo
            Logo(),
            // ------------ image
            Image1(),
            // ------------ texts
            TextsScreen1(),
            // ------------ button
            height24,
            NextButton()
          ],
        ),
      ),
    );
  }
}
