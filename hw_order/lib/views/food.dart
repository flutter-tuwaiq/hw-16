import 'package:flutter/material.dart';
import 'package:hw_order/models/colors.dart';
import '../components/categories/card_categories.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Food',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: ListOfColors.boldBlack),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CardCategories(
                    meal: 'Jollof Rice',
                    imgOfMeal: 'images/download__2_-removebg-preview 1.png',
                    rate: '4.7',
                    price: '₦1800'),
                CardCategories(
                    meal: 'Eba and Egusi',
                    imgOfMeal: 'images/download__3_-removebg-preview (1) 1.png',
                    rate: '4.9',
                    price: '₦35000'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CardCategories(
                    meal: 'Banga and starch',
                    imgOfMeal: 'images/download__5_-removebg-preview 1.png',
                    rate: '4.7',
                    price: '₦7000'),
                CardCategories(
                    meal: 'Catfish BBQ',
                    imgOfMeal: 'images/download (6) 1.png',
                    rate: '4.7',
                    price: '₦300'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
