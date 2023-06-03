import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  PersonalInfo({super.key, required this.title, required this.value});
  String? title;
  String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        Text(
          value!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
