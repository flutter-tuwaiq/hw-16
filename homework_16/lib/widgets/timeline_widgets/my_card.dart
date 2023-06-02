import 'package:flutter/material.dart';

import '../../consts/chat_colors.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {super.key,
      required this.name,
      required this.username,
      required this.profileImage,
      required this.image});

  final String name, username, profileImage, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          elevation: 0,
          color: appMaincolor,
          child: Column(
            children: [
              ListTile(
                trailing: CircleAvatar(
                  backgroundImage: NetworkImage(profileImage),
                ),
                title: Text(
                  name,
                  textAlign: TextAlign.end,
                ),
                subtitle: Text(
                  username,
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: NetworkImage(image),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
