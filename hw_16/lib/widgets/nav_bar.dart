import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: const Color.fromARGB(208, 255, 220, 191),
      backgroundColor: const Color.fromARGB(208, 251, 235, 222),
      buttonBackgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.ease,
      items: const [
        Icon(
          Icons.home_filled,
          color: Color.fromARGB(255, 230, 42, 29),
        ),
        Icon(Icons.favorite_border_rounded),
        Icon(Icons.notifications_none_rounded),
        Icon(
          Icons.shopping_cart_outlined,
        ),
      ],
    );
  }
}
