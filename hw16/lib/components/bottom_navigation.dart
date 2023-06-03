import 'package:flutter/material.dart';

final bottomNavigati = BottomNavigationBar(
  backgroundColor: Colors.white,
  selectedItemColor: const Color.fromARGB(255, 37, 80, 107),
  unselectedItemColor: Colors.grey,
  elevation: 0,
  items: const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.storefront_sharp),label: ''),
  BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard_rounded),label: ''),
  BottomNavigationBarItem(icon: Icon(Icons.blinds_closed_rounded),label: ''),
  ]
  );