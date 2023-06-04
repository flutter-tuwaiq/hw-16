import 'package:flutter/material.dart';

import 'Home1Page.dart';

class hello extends StatefulWidget {
  const hello({super.key});

  @override
  State<hello> createState() => _helloState();
}

class _helloState extends State<hello> {
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
          const Image(image: AssetImage("images/des.jpg")),
          const SizedBox(
            width: 19,
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Deliver to your home",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Color.fromARGB(255, 255, 0, 0),
                )),
          ),
          const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Enjoy a fast and smooth delivery at your ",
                      style: TextStyle(
                        fontSize: 21,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                ],
              )),
          const SizedBox(
            height: 170,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: const Color.fromARGB(255, 255, 0, 0),
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 228, 5, 5)),
                child: const Text(
                  "Get started",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
