import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard(
      {super.key,
      required this.rating,
      required this.itemName,
      required this.Price});
  final String rating;
  final String itemName;
  final String Price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        
      ),
    );
  }
}
