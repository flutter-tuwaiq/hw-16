import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart';
import '../components/menu.dart';
import '../components/menu_app_bar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: menuAppBar,
      bottomNavigationBar: bottomNavigati,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 694,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 37, 80, 107),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(28, 28, 0, 0),
                child: Text('Select your coffee',style: TextStyle(fontSize: 18,color: Color.fromARGB(189, 255, 255, 255)),),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 72, 0, 0),
                child: Menu(imageName: 'assets/pngegg.png',coffeName: 'Americano',),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(208, 72, 0, 0),
                child: Menu(imageName: 'assets/c1.png', coffeName: 'Cappuccino'),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 254, 0, 0),
                child: Menu(imageName: 'assets/c2.png',coffeName: 'Latte coffee',),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(208, 254, 0, 0),
                child: Menu(imageName: 'assets/c3.png', coffeName: 'Flat White'),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 438, 0, 0),
                child: Menu(imageName: 'assets/c4.png',coffeName: 'ice coffee',),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(208, 438, 0, 0),
                child: Menu(imageName: 'assets/c5.png', coffeName: 'Espresso'),
              ),
            ],
          )
        ],
      ),
    );
  
  }
}