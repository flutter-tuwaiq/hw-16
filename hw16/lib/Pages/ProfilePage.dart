import 'package:flutter/material.dart';
import 'package:hw16/Styles/AppStyles.dart';

import '../Widgets/Buttons/FollowButton.dart';
import '../Widgets/RecipeCard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile', style: Styles.headLineStyle1),
                Icon(Icons.menu, color: Styles.text1Color, size: 28)
              ],
            ),
            const SizedBox(height: 21),
            Row(
              children: [
                Container(
                  height: 154,
                  width: 112,
                  decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('/profile_picture.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Eko Prasetyo', style: Styles.headLineStyle1),
                        const SizedBox(width: 12),
                        Image.asset('/Indo_flag.png'),
                      ],
                    ),
                    Text("Tarakan, Indonesia", style: Styles.userInfoStyle),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("1", style: Styles.profileNumbersStyle),
                            const SizedBox(height: 7),
                            Text("Recipe", style: Styles.headLineStyle4),
                          ],
                        ),
                        const SizedBox(width: 33),
                        Column(
                          children: [
                            Text("347", style: Styles.profileNumbersStyle),
                            const SizedBox(height: 7),
                            Text("Like", style: Styles.headLineStyle4),
                          ],
                        ),
                        const SizedBox(width: 33),
                        Column(
                          children: [
                            Text("100", style: Styles.profileNumbersStyle),
                            const SizedBox(height: 7),
                            Text("Following", style: Styles.headLineStyle4),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const Row(children: [
                      SizedBox(
                        width: 99,
                      ),
                      FollowButton()
                    ]),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Recipe', style: Styles.headLineStyle2),
                Icon(
                  Icons.add_circle_outline,
                  color: Styles.text1Color,
                  size: 30,
                )
              ],
            ),
            const SizedBox(height: 21),
            RecipeCard(
              recipeImage: "rice_with_egg",
              recipeTitle: "Fried chicken",
              likesCount: "220",
            ),
          ],
        ),
      ),
    );
  }
}
