import 'package:flutter/material.dart';

import '../components/Onboarding pages/page three/heading_one.dart';
import '../components/Onboarding pages/page three/heading_two.dart';
import '../components/Onboarding pages/page three/image_three.dart';
import '../components/Onboarding pages/page three/page_three_continue.dart';
import '../components/Onboarding pages/page three/page_three_indicators.dart';
import '../components/app_bar.dart';
import '../constants/spaces.dart';

class OnboardPageThree extends StatelessWidget {
  const OnboardPageThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customBar(context),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpace8,
              HeadingOnePageThree(),
              kVSpace32,
              HeadingTwoPageThree(),
              SizedBox(
                height: 56,
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  ImageThreePageThree(),
                  PageThreeIndicators(),
                ],
              ),
              kVSpace24,
              PageThreeContinue()
            ],
          ),
        ),
      ),
    );
  }
}




