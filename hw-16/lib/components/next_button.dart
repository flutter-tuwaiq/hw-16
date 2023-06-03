import 'package:flutter/material.dart';
import 'package:hw_16/extentions/context.dart';

import '../screens/login_with_email.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.pushPage(const LoginWithEmail());
      },
      backgroundColor: Colors.red[700],
      child: const Icon(Icons.navigate_next),
    );
  }
}
