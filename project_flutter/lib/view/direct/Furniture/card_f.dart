import 'package:flutter/material.dart';

class Card_f extends StatelessWidget {
  const Card_f(
      {super.key, required this.name, this.imageUrl, required this.items});

  final String? imageUrl;
  final String name;
  final int items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      imageUrl ??
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                      width: 170.0,
                      height: 170.0),
                )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'New $name',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$items Items',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            //-----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      imageUrl ??
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                      width: 170.0,
                      height: 170.0),
                )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'New $name',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$items Items',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ],
    );
    // KhSpace16
/*
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text( name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),

                      //   kVSpace8,
                      Text(latestMessage),
            ],
           )*/
  }
}
