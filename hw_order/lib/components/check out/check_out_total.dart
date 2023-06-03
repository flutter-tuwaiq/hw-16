import 'package:flutter/material.dart';

import '../../models/colors.dart';

class CheckOutTotal extends StatelessWidget {
  const CheckOutTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Subtotal',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: ListOfColors.boldBlack),
            ),
            Text(
              '₦120000',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: ListOfColors.red),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Total',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: ListOfColors.boldBlack),
            ),
            Text(
              '₦120000',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: ListOfColors.red),
            ),
          ],
        ),
      ],
    );
  }
}
