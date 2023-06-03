import 'package:flutter/material.dart';
import 'package:hw16/Styles/AppStyles.dart';

import '../Widgets/Buttons/CategoryButton.dart';
import '../Widgets/RecipeCard.dart';
import '../Widgets/MySearchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          children: [
            Text('Let\'s Cooking', style: Styles.headLineStyle1),
            const SizedBox(height: 21),
            const MySearchBar(hintText: 'Search recipe'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Category', style: Styles.headLineStyle2),
                TextButton(
                    onPressed: () {},
                    child: Text("View all", style: Styles.headLineStyle4)),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(categoryName: 'Trending'),
                  const SizedBox(width: 18),
                  CategoryButton(categoryName: 'New'),
                  const SizedBox(width: 18),
                  CategoryButton(categoryName: 'Popular'),
                  const SizedBox(width: 18),
                  CategoryButton(categoryName: 'Recomend'),
                ],
              ),
            ),
            const SizedBox(height: 18),
            RecipeCard(
                recipeImage: "fried_chicken",
                recipeTitle: "Fried chicken",
                username: "Siren",
                likesCount: "220"),
            const SizedBox(height: 24),
            RecipeCard(
                recipeImage: "meatballs_with_egg",
                recipeTitle: "Chili meatball with egg and...",
                username: "Zid_Q",
                likesCount: "102"),
            const SizedBox(height: 24),
            RecipeCard(
                recipeImage: "crab",
                recipeTitle: "Sweet and sour crab",
                username: "Zid_Q",
                likesCount: "543"),
          ],
        ),
      ),
    );
  }
}
