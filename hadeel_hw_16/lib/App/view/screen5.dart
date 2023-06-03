import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/components/screen5/details_screen5.dart';

import '../components/screen5/buttons_screen5.dart';
import '../components/screen5/topbar_screen5.dart';
import '../components/spaces.dart';

class Screen5 extends StatelessWidget {
  const Screen5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // --------------- background image
          Image.asset('lib/App/assets/images/backPic2.png'),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height32,
                  // --------------- top bar
                  const TopBar(),
                  // --------------- image
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset(
                        'lib/App/assets/images/food1-2.png',
                      ),
                    ),
                  ),
                  // --------------- detail of meal
                  const Details(),
                  height96,
                  // --------------- two buttons
                  const MyButtons()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
