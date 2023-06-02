import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
}
