import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/extensions/navigator.dart';
import 'package:hadeel_hw_16/App/view/screen5.dart';

import '../spaces.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    super.key,
    required this.image,
    required this.name,
    required this.rest,
    required this.price,
  });

  final String image;
  final String name;
  final String rest;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushPage(const Screen5());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), // ---- Radius
          boxShadow: [
            // ---- Shadow
            BoxShadow(
              color: const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
            ),
          ],
        ),
        height: 170,
        width: 130,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            image, // ---- image
            height: 100,
            width: 100,
          ),
          Text(
            name, // ---- name
          ),
          Text(
            rest, // ---- restaurant
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
          Text(
            price, // ---- price
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          height8
        ]),
      ),
    );
  }
}
