import 'package:flutter/material.dart';
import 'package:project_flutter/view/direct/chat.dart';
import 'package:project_flutter/view/direct/Furniture/furniture.dart';
import 'package:project_flutter/view/direct/home/home.dart';
import 'package:project_flutter/view/direct/person.dart';
import 'package:project_flutter/view/direct/Shop/shop.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentIndex = 0;



  List myScreenList = [Home(), Furniture(), shop(), Chat(), Person()];
  @override


  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 20),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
          ],
        ),
        body: myScreenList[currentIndex]);
  }
}
