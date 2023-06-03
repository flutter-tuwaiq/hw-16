import 'package:flutter/material.dart';

extension Nav on BuildContext {
  pushPage(Widget page) {
    return Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  pushNamedPage(String route) {
    return Navigator.of(this).pushNamed(route);
  }
}
