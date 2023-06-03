import 'package:flutter/material.dart';
import '../components/categories/card_categories.dart';
import '../extensions/next_page.dart';
import '../models/colors.dart';
import '../views/product_description.dart';

class Snacks extends StatefulWidget {
  const Snacks({super.key});

  @override
  State<Snacks> createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Snacks',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: ListOfColors.boldBlack),
          ),
          TextButton(
            onPressed: () {
              context.nextPage(const ProductDescription());
            },
            child: const CardCategories(
                meal: 'King Burger',
                imgOfMeal: 'images/image 45.png',
                rate: '4.7',
                price: '₦1800'),
          )
        ],
      ),
    );
  }
}
