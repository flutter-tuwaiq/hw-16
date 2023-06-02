import 'package:flutter/material.dart';
import '../../consts/chat_colors.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
            child: Container(
              color: appMaincolor,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
