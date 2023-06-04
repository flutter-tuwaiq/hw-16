import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hw_16/componants/BannerContainer.dart';

final List<Widget> imgList = [
  const BannerContainer(),
  const BannerContainer(),
  const BannerContainer(),
];

int currentIndex = 0;

class ProductSlideshow extends StatefulWidget {
  const ProductSlideshow({super.key});

  @override
  State<ProductSlideshow> createState() => _ProductSlideshowState();
}

class _ProductSlideshowState extends State<ProductSlideshow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: imgList,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DotsIndicator(
              decorator: DotsDecorator(
                  activeColor: Colors.red,
                  color: Colors.grey.shade300,
                  spacing: const EdgeInsets.all(2)),
              dotsCount: imgList.length,
              position: currentIndex.toInt(),
            ),
          ),
        ],
      ),
    );
  }
}
