// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hw_16/componants/MyBottomAppBar.dart';
import 'package:hw_16/componants/CustomButton.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  final font18 = 18.0;
  final font12 = 12.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Image.asset('assets/images/foodBackground.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Select the',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: font18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 24),
            child: Text(
              'Favorities Menu',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: font18),
            ),
          ),
          Text(
            'Now eat well, don\'t leave the house, You can',
            style: TextStyle(fontSize: font12),
          ),
          Text(
            'choose your favorite food only with',
            style: TextStyle(fontSize: font12),
          ),
          Text(
            'one click',
            style: TextStyle(fontSize: font12),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 64),
            child: CustomButton(
              title: 'Next',
              hight: 12,
              width: 42,
              forward: true,
              routeName: '/home', buttonColor: Colors.red, textColor: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
