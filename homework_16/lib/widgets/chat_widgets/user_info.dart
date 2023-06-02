import 'package:flutter/material.dart';

import '../../consts/chat_colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.cancel_presentation_rounded,
            size: 35,
            color: mainColor,
          ),
          title: Text(
            "Fahad",
            textAlign: TextAlign.end,
          ),
          subtitle: Text(
            "آخر ظهور قبل 20 دقيقة",
            textAlign: TextAlign.end,
          ),
          trailing: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://img.freepik.com/free-photo/emotions-people-concept-headshot-serious-looking-handsome-man-with-beard-looking-confident-determined_1258-26730.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            thickness: 1,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
