// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hw_order/models/colors.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  TopBar({super.key});

  FontWeight weight = FontWeight.w400;
  double sizeFont = 14;
  Color textColor = const Color.fromRGBO(9, 5, 28, 1);

  @override
  Widget build(BuildContext context) {
    return TabBar(indicatorColor: ListOfColors.red, tabs: [
      Row(
        children: [
          Tab(child: Image.asset('images/download (1) (1) 1.png')),
          Text(
            'snack',
            style: TextStyle(
                fontWeight: weight, fontSize: sizeFont, color: textColor),
          )
        ],
      ),
      Row(
        children: [
          Tab(child: Image.asset('images/download (3) 1.png')),
          Text(
            'Drinks',
            style: TextStyle(
                fontWeight: weight, fontSize: sizeFont, color: textColor),
          )
        ],
      ),
      Row(
        children: [
          Tab(child: Image.asset('images/download (3) 2.png')),
          Text(
            'Food',
            style: TextStyle(
                fontWeight: weight, fontSize: sizeFont, color: textColor),
          )
        ],
      ),
    ]);
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
