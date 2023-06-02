import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({
    super.key,
    required this.name,
    required this.image,
  });

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 46,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 43,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                backgroundImage: NetworkImage(image),
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
