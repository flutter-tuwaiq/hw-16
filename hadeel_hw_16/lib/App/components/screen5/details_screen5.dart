import 'package:flutter/material.dart';

import '../spaces.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Beef Burger",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            Text(
              "39 SR",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            )
          ],
        ),
        height16,
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Color.fromRGBO(60, 188, 250, 1),
              size: 30,
            ),
            width8,
            Text(
              "Mcdi",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 100, 100, 100)),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Color.fromRGBO(60, 188, 250, 1),
              size: 30,
            ),
            width8,
            Text(
              "4.7",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 100, 100, 100)),
            ),
          ],
        ),
        height16,
        Text(
          "Description",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        height16,
        Text(
          "Cheese burger with meat, cheese mozzarella, and vegetable. \nIf you want to add a drink or other menu, don't forget to confirm first.",
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 100, 100, 100)),
        ),
      ],
    );
  }
}
