import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/view/screen3.dart';
import 'package:hadeel_hw_16/App/view/screen4.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _Screen3State();
}

class _Screen3State extends State<HomePage> {
  int currentIndex = 0;

  final List myScreenList = [
    const Screen3(),
    const Screen4(),
    const Screen3(),
    const Screen3(),
    const Screen3(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 190, 190, 190),
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
              elevation: 0.0,
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              currentIndex: currentIndex,
              unselectedItemColor: Colors.grey[600],
              selectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: "Wishlist"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined), label: "Messages"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outlined), label: "Profile"),
              ]),
        ),
        body: myScreenList[currentIndex]);
  }
}
