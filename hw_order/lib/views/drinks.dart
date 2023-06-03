import 'package:flutter/material.dart';
import '../components/categories/card_categories.dart';
import '../models/colors.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Drinks',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: ListOfColors.boldBlack),
          ),
          CardCategories(
              meal: 'Cocacola',
              imgOfMeal: 'images/download__1_-removebg-preview (1) 1.png',
              rate: ' ',
              price: '₦300')
        ],
      ),
    );
  }
}
