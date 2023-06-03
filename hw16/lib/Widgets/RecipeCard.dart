import 'package:flutter/material.dart';

import '../Styles/AppStyles.dart';

// ignore: must_be_immutable
class RecipeCard extends StatelessWidget {
  final String recipeImage;
  final String recipeTitle;
  final String? username;
  final String likesCount;

  RecipeCard({
    super.key,
    required this.recipeImage,
    required this.recipeTitle,
    this.username,
    required this.likesCount,
  });
  late String picture = recipeImage;
  late String title = recipeTitle;
  late String? user = username;
  late String likes = likesCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 260,
          width: 380,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 210,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage('/$recipeImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (username == null)
                      ? Text(recipeTitle, style: Styles.headLineStyle3)
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text(recipeTitle, style: Styles.headLineStyle3),
                              Text("By $username",
                                  style: Styles.headLineStyle5),
                            ]),
                  Row(
                    children: [
                      Text(likesCount, style: Styles.likesStyle),
                      Icon(Icons.favorite_border, color: Styles.redColor),
                      Icon(Icons.bookmark_rounded, color: Styles.orangeColor),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
