import 'package:flutter/material.dart';
import 'package:tamang/consts/tamang_colors.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:bgColor,
        body: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: const [
                      SizedBox(
                        child: Image(
                          image: AssetImage('images/image02.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        child: Expanded(
                          child: Text(
                            'Tamang \n FoodService',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Image(
                      image: AssetImage('images/image01.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const Text(
                'Choose your food',
                style: TextStyle(fontSize: 30),
              ),
              const Text(
                'Easily find your type of food craving and you\'ll get delivery in wide range.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              //button GET STARTED for homepage
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: btnColor),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signin');
                      },
                      child: const Text('GET STARTED'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
