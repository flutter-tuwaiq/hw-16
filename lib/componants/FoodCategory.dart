import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 12,
      runSpacing: 12,
      children: [
        Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/BurgerIcon.png'),
              ),
              const Text(
                'Burger',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/pizza.png'),
              ),
              Text(
                'Pizza',
                style: TextStyle(
                    color: Colors.grey.shade800, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          width: 120,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/hotdog.png'),
              ),
              Text(
                'Sandwich',
                style: TextStyle(
                    color: Colors.grey.shade800, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
