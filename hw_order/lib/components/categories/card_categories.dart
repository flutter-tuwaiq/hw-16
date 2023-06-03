import 'package:flutter/material.dart';
import '../../models/colors.dart';

class CardCategories extends StatelessWidget {
  const CardCategories(
      {super.key,
      required this.meal,
      required this.imgOfMeal,
      required this.rate,
      required this.price});

  final String meal;
  final String imgOfMeal;
  final String rate;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 227,
      width: 163,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        shadowColor: ListOfColors.shadow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(meal,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: ListOfColors.boldBlack,
                )),
            Image.asset(imgOfMeal),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_border_rounded,
                  color: Color.fromRGBO(248, 139, 14, 1),
                ),
                Text(
                  rate,
                  style: const TextStyle(color: ListOfColors.lightGrey),
                )
              ],
            ),
            Text(
              price,
              style: const TextStyle(
                  color: Color.fromRGBO(237, 30, 43, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
