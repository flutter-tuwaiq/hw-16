// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../models/colors.dart';
import '../../views/drinks.dart';
import '../../views/food.dart';
import '../../views/snacks.dart';
import '/components/tap_bar.dart';

class ListOfCategories extends StatelessWidget {
  const ListOfCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: ListOfColors.white,
              elevation: 4.0,
              title: const Text(
                'Categories',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: ListOfColors.boldBlack),
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0), child: TopBar()),
            ),
            body: const TabBarView(
              children: [
                Snacks(),
                Drinks(),
                Food(),
              ],
            ),
          )),
    );
  }
}
