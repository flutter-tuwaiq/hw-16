import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../models/colors.dart';
import '../models/textfield_card_information.dart';

class DebitCardInformation extends StatelessWidget {
  const DebitCardInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        ImageSlideshow(
            width: 292.36,
            height: 188.39,
            indicatorColor: ListOfColors.boldBlack,
            children: [
              Image.asset('images/Card_3.png'),
              Image.asset('images/Card_3.png'),
              Image.asset('images/Card_3.png'),
              Image.asset('images/Card_3.png'),
            ]),
        const SizedBox(height: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Full Name',
              style: TextFieldCardInformation.title,
            ),
            TextFieldCardInformation.fullnameCard,
            SizedBox(height: 32),
            Text(
              'Card Number',
              style: TextFieldCardInformation.title,
            ),
            TextFieldCardInformation.cardNumber,
          ],
        ),
        const SizedBox(height: 32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text(
                  'Expiry Date',
                  style: TextFieldCardInformation.title,
                ),
                TextFieldCardInformation.expiryDate,
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: const [
                Text(
                  'CVC',
                  style: TextFieldCardInformation.title,
                ),
                TextFieldCardInformation.expiryDate,
              ],
            ),
          ],
        )
      ],
    );
  }
}
