import 'package:flutter/material.dart';

class OfferText extends StatefulWidget {
  const OfferText({super.key});

  @override
  State<OfferText> createState() => _OfferTextState();
}

class _OfferTextState extends State<OfferText> {
  FontWeight light = FontWeight.w300;

  FontWeight bold = FontWeight.w700;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special Offer',
            style:
                TextStyle(fontWeight: bold, fontSize: 18, color: Colors.white),
          ),
          Text(
            'for March',
            style:
                TextStyle(fontWeight: bold, fontSize: 18, color: Colors.white),
          ),
          Text(
            'We are here with the best',
            style:
                TextStyle(fontWeight: light, fontSize: 11, color: Colors.white),
          ),
          Text(
            'deserts intown.',
            style:
                TextStyle(fontWeight: light, fontSize: 11, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
