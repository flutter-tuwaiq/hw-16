import 'package:flutter/material.dart';
import 'package:hw_16/extentions/context.dart';

import '../components/app_bar.dart';
import '../constants/spaces.dart';
import 'Onboard_one.dart';
import 'login_with.dart';

class OnboardThree extends StatelessWidget {
  const OnboardThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpace8,
              const SizedBox(
                width: 315,
                child: Text(
                  // textAlign: TextAlign.left,
                  "GERKIN OR GERKOUT?",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ),
              kVSpace32,
              const SizedBox(
                width: 300,
                child: Text(
                  "More cheese? Less pickle? Just tap the customise button to make your dream order.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Container(
                        alignment: Alignment.center,
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/5c0f/7836/5aaea2cec55391cc915f8f0db48783f3?Expires=1686528000&Signature=MwdxMYuz1MDNTX9ty6zpZgyEZmkI~eQBvF11ynB6nXEFand8ckwSvUh08nV1X7uWWEfGS5dFhhISXhp37U0mBAvFK9OlI-i3ZXA3lkmEhAwZesVHDqh87r47Czyl4EQKQKK4yUHvKazWc6pl8WBFsR-ogRbh91QPG8Ve8X~Ys6~QeDHyem0m7S9xicJDG5iTtxC3fdysf8mhLR10~4dJEHuBQT62B4CB03lKhHb2z8~28MYQGPZhSgVnIe7eNAf0DMqdVTARt2vWZnYEAMsfc0KB80kHgdZ6tLodF14V3wqTvkh8f7C84zk46pC-jEzKNf8BkVts55Q-RuSA7glN0Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                          height: 353,
                          width: 271,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[350],
                        ),
                        height: 60,
                        width: 6,
                      ),
                      kVSpace8,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[350],
                        ),
                        height: 60,
                        width: 6,
                      ),
                      kVSpace8,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        height: 60,
                        width: 6,
                      ),
                    ],
                  ),
                ],
              ),
              kVSpace24,
              SizedBox(
                width: 358,
                height: 62,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    context.pushPage(LoginWith());
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
