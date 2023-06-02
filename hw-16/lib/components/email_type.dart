import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_16/extentions/context.dart';

import '../constants/spaces.dart';
import '../screens/login.dart';

class EmailType extends StatelessWidget {
  const EmailType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(
              width: 325,
              height: 62,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                // <-- OutlinedButton
                onPressed: () {
                  context.pushPage(const Login());
                },
                icon: const Icon(
                  Icons.apple,
                  size: 34.0,
                  color: Colors.black,
                ),
                label: const Text(
                  '   Continue with Apple',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            kVSpace16,
            SizedBox(
              width: 325,
              height: 62,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft),
                // <-- OutlinedButton
                onPressed: () {
                  context.pushPage(const Login());
                },
                icon: const Icon(
                  FontAwesomeIcons.google,
                  size: 34.0,
                  color: Colors.black,
                ),
                label: const Text(
                  '   Continue with Gmail',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            kVSpace16,
            SizedBox(
              width: 325,
              height: 62,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft),
                // <-- OutlinedButton
                onPressed: () {
                  context.pushPage(const Login());
                },
                icon: const Icon(
                  Icons.facebook,
                  size: 34.0,
                  color: Colors.black,
                ),
                label: const Text(
                  '   Continue with Facebook',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            kVSpace16,
            SizedBox(
              width: 325,
              height: 62,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                // <-- OutlinedButton
                onPressed: () {
                  context.pushPage(const Login());
                },
                icon: const Icon(
                  Icons.email,
                  size: 34.0,
                  color: Colors.black,
                ),
                label: const Text(
                  '   Continue with email',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
