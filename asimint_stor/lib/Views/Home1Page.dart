import 'package:asimint_stor/Views/sineUp.dart';
import 'package:flutter/material.dart';

import 'SineIn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Image(
                width: 90, height: 100, image: AssetImage("images/Logo.jpg")),
          ),
          const Image(image: AssetImage("images/Home.jpg")),
          const SizedBox(width: 00, height: 150),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: const Color.fromARGB(255, 228, 5, 5),
              width: 350,
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 228, 5, 5)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SineIn();
                  }));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 350,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(201, 255, 255, 255)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SignUp();
                      }));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "sign up",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined,
                            color: Color.fromARGB(255, 255, 0, 0))
                      ],
                    ),
                  )))
        ]),
      ),
    );
  }
}
