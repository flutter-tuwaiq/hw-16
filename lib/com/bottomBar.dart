import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/PageOne.dart';
import 'package:flutter_application_5/pages/pageChfez/PageThree.dart';
import 'package:flutter_application_5/pages/PageTwo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
           BottomNavigationBarItem(
  icon: ClipRRect(borderRadius: BorderRadius.circular(10),
    child: Container(width: 40, height:
     40,color: const Color.fromARGB(255, 73, 11, 84),
      child: Image.asset('imags/user.png', width: 20, height: 20,color: Colors.white,)),
  ),
  label: 'حسابي',
),
            BottomNavigationBarItem(
  icon: ClipRRect(borderRadius: BorderRadius.circular(10),
    child: Container(width: 40, height:
     40,color: const Color.fromARGB(255, 73, 11, 84),
      child: Image.asset('imags/bars-sort.png',
       width: 10, height: 10,
       color: Colors.white,)),
  ),
  label: 'طلباتي',
),
            BottomNavigationBarItem(
  icon: ClipRRect(borderRadius: BorderRadius.circular(10),
    child: Container(width: 40, height:
     40,color: const Color.fromARGB(255, 73, 11, 84),
      child: Image.asset('imags/pic2.png', 
      width: 10, height: 10,
      color: Colors.white,)),
  ),
  label: ('شيفز'),
),
          ],
        ),
      );
    
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
