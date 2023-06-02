import 'package:flutter/material.dart';

class ImagesBackground extends StatelessWidget {
  const ImagesBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
