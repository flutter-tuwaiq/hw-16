import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/components/spaces.dart';

import '../components/screen3/appbar.dart';
import '../components/screen3/banner.dart';
import '../components/screen3/categories.dart';
import '../components/screen3/blog_images.dart';
import '../components/screen3/scroll_food_items.dart';
//import '../components/spaces.dart';

class Screen3 extends StatelessWidget {
  const Screen3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 4, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --------------- Banner
              HomePageBanner(),

              Text(
                "Categories",
                style: TextStyle(fontSize: 18),
              ),
              Categories(),

              Text(
                "Popular Now",
                style: TextStyle(fontSize: 18),
              ),
              height8,
              // --------------------- popular list
              ScrollFoodItems(),
              height8,
              Text(
                "Recommended",
                style: TextStyle(fontSize: 18),
              ),
              height8,
              //--------------------------- recommended
              BlogImages(
                image1: 'lib/App/assets/images/blog1.png',
                image2: 'lib/App/assets/images/blog2.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
