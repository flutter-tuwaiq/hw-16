import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://img2.wallspic.com/previews/1/4/4/5/2/125441/125441-water-acrylic_paint-sky-fluid-liquid_bubble-x750.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
