import 'package:flutter/material.dart';

import 'user.dart';

class UsersList extends StatelessWidget {
  const UsersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        User(
          name: "أحمد",
          image:
              "https://img.freepik.com/free-photo/confident-attractive-caucasian-guy-beige-pullon-smiling-broadly-while-standing-against-gray_176420-44508.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
        ),
        User(
          name: "فهد",
          image:
              "https://img.freepik.com/free-photo/emotions-people-concept-headshot-serious-looking-handsome-man-with-beard-looking-confident-determined_1258-26730.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
        ),
        User(
          name: "نواف",
          image:
              "https://img.freepik.com/free-photo/close-up-portrait-young-bearded-man-white-shirt-jacket-posing-camera-with-broad-smile-isolated-gray_171337-629.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
        ),
        User(
          name: "vega.styles",
          image:
              "https://cdn.salla.sa/nGPyn/3D9ViaEUWLISuOoioYiUhnnya9Nhj331usdEDsRQ.png",
        ),
      ],
    );
  }
}
