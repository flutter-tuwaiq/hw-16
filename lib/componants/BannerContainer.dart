// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'OfferText.dart';

class BannerContainer extends StatefulWidget {
  const BannerContainer({super.key});

  @override
  State<BannerContainer> createState() => _BannerContainerState();
}

class _BannerContainerState extends State<BannerContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: 360,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red.shade600,
            Colors.red.shade200,
          ],
        ),
      ),
      // padding: const EdgeInsets.all(8),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          const OfferText(),
          Positioned(
            left: 22,
            bottom: 22,
            width: 74,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text(
                "Buy Now",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 11,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Image.asset(
              'assets/images/Burgers3.png',
              fit: BoxFit.fitHeight,
              width: 220,
            ),
          ),
        ],
      ),
    );
  }
}
