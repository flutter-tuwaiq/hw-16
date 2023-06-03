// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../extensions/next_page.dart';
import '../models/colors.dart';
import '../components/categories/description.dart';
import 'card.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 428,
              height: 453,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                    Color.fromRGBO(255, 253, 253, 0.44),
                    Color.fromRGBO(196, 196, 196, 1)
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Image.asset('images/image 45.png'),
            ),
            const Text(
              'King Burger',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: ListOfColors.boldBlack),
            ),
            const Text(
              '₦1500',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color.fromRGBO(255, 131, 131, 1)),
            ),
            const Text(
              'Recipe',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black),
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et nibh nec more...',
              style: TextStyle(color: ListOfColors.boldBlack),
            ),
            const Description(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    backgroundColor: ListOfColors.red),
                onPressed: (() {
                  context.nextPage(const Cards());
                }),
                child: const Text('ADD TO CART'))
          ],
        ),
      ),
    );
  }
}
