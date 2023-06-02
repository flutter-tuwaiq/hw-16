import 'package:flutter/material.dart';
import 'package:homework_16/screens/navigation_bar_screens/chat_screen.dart';
import 'package:homework_16/screens/navigation_bar_screens/profile_screen.dart';
import 'package:homework_16/screens/navigation_bar_screens/timeline_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List navBarScreens = [
    const ProfileScreen(),
    const TimelineScreen(),
    const ChatScreen(),
  ];

  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: navBarScreens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentScreenIndex = value;
          });
        },
        currentIndex: currentScreenIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
        ],
      ),
    );
  }
}
