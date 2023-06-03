import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../views/check_out.dart';
import '../views/likes.dart';
import '../views/notifications.dart';
import '../views/profile.dart';
import '../models/colors.dart';
import 'categories/list_of_categories.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

List screens = [
  const ListOfCategories(),
  const Likes(),
  const Profile(),
  const Notifications(),
  const CheckOut(),
];
int index = 0;

class _ButtomBarState extends State<ButtomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ListOfColors.red,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (currentIndex) {
            index = currentIndex;
            setState(() {});
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: ' '),
            const BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidHeart), label: ' '),
            BottomNavigationBarItem(
                icon: FloatingActionButton(
                  backgroundColor: ListOfColors.red,
                  foregroundColor: ListOfColors.grey100,
                  onPressed: () {},
                  child: const Icon(FontAwesomeIcons.solidUser),
                ),
                label: ' '),
            const BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidBell), label: ' '),
            const BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cartShopping), label: ' '),
          ]),
      body: screens[index],
    );
  }
}
