import 'dart:ui';

import 'package:flutter/material.dart';

import '../../consts/chat_colors.dart';

class ChatBackground extends StatelessWidget {
  const ChatBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 200.0, sigmaY: 200.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(50)),
                  child: Container(
                    color: appMaincolor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: child,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
