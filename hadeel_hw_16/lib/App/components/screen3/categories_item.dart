import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), // ---- Radius
            boxShadow: [
              // ---- Shadow
              BoxShadow(
                color:
                    const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
              )
            ]),
        height: 75,
        width: 75,
        child: Column(children: [
          Image.asset(
            image, // ---- image
            height: 50,
            width: 50,
          ),
          Text(
            name, // ---- name
          )
        ]),
      ),
    );
  }
}
