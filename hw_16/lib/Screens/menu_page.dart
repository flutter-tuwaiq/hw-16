import 'package:flutter/material.dart';
import '../widgets/category_type.dart';
import '../widgets/heade_name.dart';
import '../widgets/nav_bar.dart';
import '../widgets/product_card.dart';
import '../widgets/profil_photo.dart';
import '../widgets/search_in_menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            ProfilePhoto(),
            NavigateMenu(),
            HeaderName(
              header: 'Categories',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryType(
                  type: 'snacks',
                  imagePath: 'assets/images/download-1-1-1.png',
                ),
                CategoryType(
                  type: 'Drinks',
                  imagePath: 'assets/images/download-3-1.png',
                ),
                CategoryType(
                  type: 'Food',
                  imagePath: 'assets/images/download-3-2.png',
                ),
              ],
            ),
            HeaderName(
              header: 'Drinks',
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProductCard(
                        productName: 'Coffee',
                        price: '16',
                        productImage: 'assets/images/pngwing.com (2).png',
                        rating: '4.0',
                      ),
                      ProductCard(
                        productName: 'CocaCola',
                        price: '3',
                        productImage:
                            'assets/images/download1-removebg-preview-1-1.png',
                        rating: '4.9',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          ProductCard(
                            productName: 'Tea',
                            price: '2',
                            productImage:
                                'assets/images/—Pngtree—sweet tea material_118686.png',
                            rating: '5.9999999999999',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ProductCard(
                            productName: 'Water',
                            price: '1',
                            productImage: 'assets/images/pngwing.com.png',
                            rating: '5,5',
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
