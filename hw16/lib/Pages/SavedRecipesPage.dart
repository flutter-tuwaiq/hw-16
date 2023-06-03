import 'package:flutter/material.dart';
import 'package:hw16/Styles/AppStyles.dart';

import '../Widgets/RecipeCard.dart';
import '../Widgets/MySearchBar.dart';

class SavedRecipesPage extends StatefulWidget {
  const SavedRecipesPage({super.key});

  @override
  State<SavedRecipesPage> createState() => _SavedRecipesPageState();
}

class _SavedRecipesPageState extends State<SavedRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          children: [
            Text('Saved Recipe', style: Styles.headLineStyle1),
            const SizedBox(height: 21),
            const MySearchBar(
              hintText: 'Search saved recipe',
            ),
            const SizedBox(height: 20),
            RecipeCard(
                recipeImage: "fried_chicken",
                recipeTitle: "Fried chicken",
                username: "Siren",
                likesCount: "220"),
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
