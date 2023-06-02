import 'package:flutter/material.dart';
import 'package:hw_16/extentions/context.dart';

import '../screens/login.dart';

customBar(BuildContext context){
  return AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pushPage(Login());
            },
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      );
}