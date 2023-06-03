import 'package:flutter/material.dart';

import '../spaces.dart';
import 'food_item.dart';

class ScrollFoodItems extends StatelessWidget {
  const ScrollFoodItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.all(8),
          child: const Row(
            children: [
              FoodItem(
                image: 'lib/App/assets/images/food1.png',
                name: 'Beef Burger',
                rest: 'Mcdi',
                price: '39 SR',
              ),
              width16,
              FoodItem(
                image: 'lib/App/assets/images/food2.png',
                name: 'Pizza vegi',
                rest: 'Pizza hut',
                price: '45 SR',
              ),
              width16,
              FoodItem(
                image: 'lib/App/assets/images/food3.png',
                name: 'Sandwitch',
                rest: 'Subway',
                price: '24 SR',
              ),
            ],
          ),
        ));
  }
}
