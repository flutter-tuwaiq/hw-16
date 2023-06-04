// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hw_16/componants/HomeAppbar.dart';
import 'package:hw_16/componants/HomePageContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    Center(
      child: Text(
        'Index 1: Profile',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 2: Cart',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 3: Chat',
        style: optionStyle,
      ),
    ),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const HomeAppbar(title: 'Freedom way, Lekki phase'),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HomePage._widgetOptions.elementAt(_selectedIndex),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          tabBorderRadius: 16,
          backgroundColor: Colors.white,
          color: Colors.red.shade100,
          activeColor: Colors.red,
          tabBackgroundColor: Colors.red.shade50,
          gap: 14,
          textStyle: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.w600),
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              icon: Icons.person_rounded,
              text: 'Profile',
            ),
            GButton(icon: Icons.shopping_cart, text: 'Cart'),
            GButton(icon: Icons.chat, text: 'Chat'),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
