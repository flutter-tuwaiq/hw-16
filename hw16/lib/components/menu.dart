import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key, required this.imageName, required this.coffeName});
  final String imageName;
  final String coffeName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
                height: 164,
                width: 164,
                decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 22, 0, 0),
              child: Image.asset(imageName,width: 100,height: 100,),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(46, 122, 0, 0),
              child: Text(coffeName,style: const TextStyle(fontWeight: FontWeight.bold),),
            ),
      ]
    );
  }
}