import 'package:flutter/material.dart';
import 'package:project_flutter/view/direct/Furniture/furniture.dart';
import 'package:project_flutter/view/direct/Sofa/sofa.dart';
import 'package:project_flutter/view/direct/Shop/ShopCard.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              InkWell(
                child: ShopCard(
                  // imageUrl: "",
                  name: 'Furniture',
                  items: 77,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Furniture();
                      },
                    ),
                  );
                },
              ),
              ShopCard(
                name: 'New Chair',
                items: 77,
              ),
              ShopCard(
                name: 'New Sofa',
                items: 77,
              ),
              ShopCard(
                name: 'New Table',
                items: 77,
              ),
            ],
          ),
        ));
  }
}
