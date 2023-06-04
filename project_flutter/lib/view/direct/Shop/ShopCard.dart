import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard(
      {super.key, required this.items, required this.name, this.imageUrl});

  final String? imageUrl;
  final String name;
  final int items;

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 340.0,
                    height: 150.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        imageUrl ??
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSTMsPIRE5DBxFDmi4ERmdvuaEpsW1RYeVnSAbOmlKtg&s',
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$items items",
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
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
