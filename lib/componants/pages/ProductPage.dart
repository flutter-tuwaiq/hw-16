// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../MyBackButton.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/burger.jpg'),
              const Positioned(
                left: 8,
                top: 8,
                child: MyBackButton(),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ],
      ),
    ));
  }
}
