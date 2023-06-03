import 'package:flutter/material.dart';

class BackgroundDesign extends StatelessWidget {
  const BackgroundDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ------------ rectangle shape
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          color: const Color.fromARGB(255, 60, 188, 250),
        ),
        // ------------ triangle shape
        ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            color: const Color.fromARGB(255, 60, 188, 250),
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        // ------------ backgound image
        Container(
          width: MediaQuery.of(context).size.width,
          height: 550,
          child: Image.asset('lib/App/assets/images/backPic1.png',
              fit: BoxFit.fill),
        ),
      ],
    );
  }
}

// Triangle shape
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
