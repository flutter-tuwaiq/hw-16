import 'package:flutter/material.dart';
import 'package:project_flutter/view/direct/home/imagehome.dart';
import 'package:project_flutter/view/direct/home/item_name.dart';

import 'package:project_flutter/view/direct/home/sliderimages.dart';
import 'package:project_flutter/view/direct/home/ImagesButtons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Stack(
          children: [
            Sliderimages(),
            ImagesButtons(),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              ItemName(),
              imagehome(),
            ],
          ),
        )
      ],
    );

   
  }
}
