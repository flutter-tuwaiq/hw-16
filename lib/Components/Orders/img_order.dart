import 'package:flutter/material.dart';

import '../../Screen/home_page.dart';

class ImageOrder extends StatelessWidget {
  const ImageOrder({super.key, required this.imgUrl});
  final String imgUrl;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      // height: 600,
      child: Column(children: [
        Stack(
          children: [
            Image.network(
              imgUrl,
              fit: BoxFit.cover,
              height: 500,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
             
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              ),
              //  Icon(Icons.arrow_back_ios , size:25, color: Colors.white,),
            ),
          ],
        ),
      ]),
    );
  }
}
