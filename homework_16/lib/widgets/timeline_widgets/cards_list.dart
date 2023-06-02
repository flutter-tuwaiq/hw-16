import 'package:flutter/material.dart';

import 'my_card.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCard(
          name: 'Ahmad',
          username: "@Ahmad1419",
          profileImage:
              "https://img.freepik.com/free-photo/confident-attractive-caucasian-guy-beige-pullon-smiling-broadly-while-standing-against-gray_176420-44508.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
          image:
              "https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=",
        ),
        MyCard(
          name: 'Fahad',
          username: "@Fahad1994",
          profileImage:
              "https://img.freepik.com/free-photo/emotions-people-concept-headshot-serious-looking-handsome-man-with-beard-looking-confident-determined_1258-26730.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
          image:
              "https://media.istockphoto.com/id/501707966/photo/durdle-door-dorset-beach.jpg?s=612x612&w=0&k=20&c=tBfmNdPTLOO_G6D-cikqzkWqcs3H5m2c1GfZba7OpIM=",
        ),
        MyCard(
          name: 'Nawaf',
          username: "@mightyNawaf",
          profileImage:
              "https://img.freepik.com/free-photo/close-up-portrait-young-bearded-man-white-shirt-jacket-posing-camera-with-broad-smile-isolated-gray_171337-629.jpg?size=626&ext=jpg&ga=GA1.2.109268681.1652337243&semt=robertav1_2_sidr",
          image:
              "https://media.istockphoto.com/id/944812540/photo/mountain-landscape-ponta-delgada-island-azores.jpg?s=612x612&w=0&k=20&c=mbS8X4gtJki3gGDjfC0sG3rsz7D0nls53a0b4OPXLnE=",
        ),
      ],
    );
  }
}
