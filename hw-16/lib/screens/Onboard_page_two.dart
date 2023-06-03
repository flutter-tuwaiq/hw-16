import 'package:flutter/material.dart';
import 'package:hw_16/components/Onboarding%20pages/page%20two/image_Two.dart';

import '../components/Onboarding pages/page two/heading_one.dart';
import '../components/Onboarding pages/page two/heading_two.dart';
import '../components/Onboarding pages/page two/page_two_continue.dart';
import '../components/Onboarding pages/page two/page_two_indicators.dart';
import '../components/app_bar.dart';
import '../constants/spaces.dart';

class OnboardPageTwo extends StatelessWidget {
  const OnboardPageTwo({
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
              HeadingOnePageTwo(),
              kVSpace32,
              HeadingTwoPageTwo(),
              kVSpace24,
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  ImageTwoPageTwo(),
                  IndicatorPageTwo(),
                ],
              ),
              kVSpace24,
              PageTwoContinue()
            ],
          ),
        ),
      ),
    );
  }
}
