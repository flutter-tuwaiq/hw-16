// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'CartPage.dart';
import 'HomePage.dart';
import 'ProductPage.dart';
import 'ReviewPage.dart';
import 'StartPage.dart';

Map<String, WidgetBuilder> Routes() {
  return {
    '/start': (context) => const StartPage(),
    '/home': (context) => const HomePage(),
    '/item': (context) => const ProductPage(),
    '/cart': (context) => const CartPage(),
    '/feedback': (context) => const ReviewPage(),
  };
}
