import 'package:flutter/material.dart';

import 'categories_item.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CategoriesItem(
            image: 'lib/App/assets/images/burger.png',
            name: 'Burger',
          ),
          CategoriesItem(
            image: 'lib/App/assets/images/coffee.png',
            name: 'Drink',
          ),
          CategoriesItem(
            image: 'lib/App/assets/images/pizza.png',
            name: 'Pizza',
          )
        ],
      ),
    );
  }
}
