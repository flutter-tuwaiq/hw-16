import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({super.key, this.name, this.imageUrl});

  final String? imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      imageUrl ??
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                      width: 170.0,
                      height: 170.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name ?? 'New ',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                )
              ],
            ),

            Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                  imageUrl ??
                      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                  width: 170.0,
                  height: 170.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name ?? 'New ',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                )
              ],
            ),

         
          ],
        ),
      ],
    );
  }
}
