import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/thirdPage/partlogin.dart';
import 'package:flutter_application_8/thirdPage/saginInF_G.dart';

class ThirdpPage extends StatelessWidget {
  const ThirdpPage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 255, 23, 6),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Register ',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'Sign in',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 40),
              partlogin(), 
              saginInF_G()],
          ),
        ),
      ),
    ),
  );
}
}
