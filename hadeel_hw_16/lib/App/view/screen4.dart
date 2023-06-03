import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/components/spaces.dart';

import '../components/screen3/food_item.dart';
import '../components/screen3/blog_images.dart';
import '../components/screen4/appbar_screen4.dart';

class Screen4 extends StatelessWidget {
  const Screen4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarScreen4(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 4, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --------------- Banner

              height8,
              // --------------------- popular list
              FoodItem(
                image: 'lib/App/assets/images/food1.png',
                name: 'Beef Burger',
                rest: 'Mcdi',
                price: '39 SR',
              ),
              height48,
              Text(
                "Recommended",
                style: TextStyle(fontSize: 18),
              ),
              height8,
              //--------------------------- recommended
              BlogImages(
                image1: 'lib/App/assets/images/blog1.png',
                image2: 'lib/App/assets/images/blog2.png',
              ),
              height24,
              Text(
                "New Menu",
                style: TextStyle(fontSize: 18),
              ),
              height8,
              //--------------------------- recommended
              BlogImages(
                image1: 'lib/App/assets/images/blog3.png',
                image2: 'lib/App/assets/images/blog4.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
