import 'package:flutter/material.dart';

import '../spaces.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset('lib/App/assets/images/banner.png'),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height32,
                const Text(
                  'Complete Cheese \nBurger Meal',
                  style: TextStyle(fontSize: 18),
                ),
                height8,
                Container(
                  height: 24,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
