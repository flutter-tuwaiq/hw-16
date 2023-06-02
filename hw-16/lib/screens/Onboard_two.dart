import 'package:flutter/material.dart';
import 'package:hw_16/extentions/context.dart';
import 'package:hw_16/screens/Onboard_three.dart';

import '../components/app_bar.dart';
import '../constants/spaces.dart';

class OnboardTw extends StatelessWidget {
  const OnboardTw({
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
                width: 260,
                child: Text(
                  // textAlign: TextAlign.left,
                  "CHOOSE HOW TO COLLECT",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ),
              kVSpace32,
              const SizedBox(
                width: 320,
                child: Text(
                  "Collect your order contact-free at a restaurant or head straight to drive-thru with your code.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              kVSpace24,
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Container(
                        alignment: Alignment.center,
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/e080/efb9/e3a354b661e1513cbd270b903a2ff11f?Expires=1686528000&Signature=gr6hXG3tJ7u1sPHk7fH1L1c2lboMcpOsdER-FBozIHZGfn9em-LzLxFV2qY8XVZvOOMswJeXeeXvILAUPUMoyq~mNj8t9ROw048bmQsjSI5ksD1NrEQw3uQRkuXHcNSFSYhDrgn4lk8z~UOI5KtxOuzjR7mvnkcgTJ8ost0r2o97HZi2UuatIdQH3O2yHA5ywwiXozuwAnUJtpeMFXzBlcCOJG3zdL7jrTblpA7fdxq~YKtNA7QJ5xoB3FwMlD7XHy3ckU7flkUGuOQxqkssGP-Dts-RPTQGTJA3J08NJmxycSADkaFQ-alB5YgT6Y63Jl1HWAbwI7UxKuZ0zjMjaw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
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
                          color: Colors.black,
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
                    context.pushPage(OnboardThree());
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
