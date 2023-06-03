import 'package:flutter/material.dart';

import '../components/Onboarding pages/page one/heading_one.dart';
import '../components/Onboarding pages/page one/heading_two.dart';
import '../components/Onboarding pages/page one/image_one.dart';
import '../components/Onboarding pages/page one/page_one_continue.dart';
import '../components/Onboarding pages/page one/page_one_indicators.dart';
import '../components/app_bar.dart';
import '../constants/spaces.dart';

class OnboardPageOne extends StatelessWidget {
  const OnboardPageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBar(context),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpace8,
              HeadingOnePageOne(),
              kVSpace32,
              HeadingTwoPageOne(),
              SizedBox(
                height: 42,
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  ImageOnePageOne(),
                  PageOneIndicators(),
                ],
              ),
              kVSpace24,
              PageOneContinue(),
            ],
          ),
        ),
      ),
    );
  }
}
