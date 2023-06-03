import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_16/extentions/context.dart';
import 'package:hw_16/screens/login_with_email.dart';


customBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(FontAwesomeIcons.chevronLeft),
      onPressed: () {
        Navigator.pop(context);
      },
      color: Colors.black,
    ),
    actions: [
      TextButton(
        onPressed: () {
          context.pushPage(LoginWithEmail());
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
