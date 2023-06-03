import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';
import '../models/colors.dart';

class MenuForFood extends StatelessWidget {
  const MenuForFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ListOfColors.white,
      appBar: AppBar(
        backgroundColor: ListOfColors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'images/tamara-govedarovic-INUH3x_4SGk-unsplash.jpg',
                width: 45,
                height: 45,
              ),
            ),
          )
        ],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: SizedBox(
              width: 285,
              height: 50,
              child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(249, 168, 77, 0.1),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Icon(
                          Icons.search,
                          color: Color.fromRGBO(218, 99, 23, 1),
                          size: 24,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'What do you want to order?',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(218, 98, 23, 0.4)))),
            )),
      ),
      body: const ButtomBar(),
    );
  }
}
