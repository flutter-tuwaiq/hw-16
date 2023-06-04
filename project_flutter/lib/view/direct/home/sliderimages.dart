import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Sliderimages extends StatelessWidget {
  const Sliderimages({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      //height: 400,
      height: MediaQuery.of(context).size.height * 0.60, //0.46
      indicatorRadius: 5,
      indicatorColor: Colors.white,
      indicatorBackgroundColor: const Color.fromARGB(130, 255, 255, 255),
      children: const [
        Image(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://mlid0nahrnce.i.optimole.com/w:auto/h:auto/q:mauto/https://www.veganbar.se/wp-content/uploads/2023/03/linh-le-FYgnwFMZBM0-unsplash.jpg"),
        ),

        Image(
          image: NetworkImage(
              "https://m.media-amazon.com/images/I/61MFNGhjG0L._AC_SX679_.jpg"),
        ),

        Image(
          image: NetworkImage(
              "https://m.media-amazon.com/images/I/61MFNGhjG0L._AC_SX679_.jpg"),
        ),
        Image(
          image: NetworkImage(
              "https://m.media-amazon.com/images/I/61MFNGhjG0L._AC_SX679_.jpg"),
        ),
        Image(
          image: NetworkImage(
              "https://m.media-amazon.com/images/I/61MFNGhjG0L._AC_SX679_.jpg"),
        ),
        // ]),
      ],
    );
  }
}
