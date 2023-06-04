import 'package:flutter/material.dart';
import 'package:hw_16/componants/ProductSlideshow.dart';

import 'FoodCategory.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //slideshow
        ProductSlideshow(),
        //sidescroll
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: FoodCategory(),
                ),
              ),
            ),
          ],
        ),
        //cards
        Row(
          children: [],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Pobular Meal Menu'),
            Row(
              children: [
                Text('See All'),
                Icon(Icons.arrow_right),
              ],
            ),
          ],
        ),
        //listview
      ],
    );
  }
}
