import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_1_flutter/Componant/ContainerprofileConternar.dart';
import 'package:project_1_flutter/Componant/profileImageComponent.dart';

import '../Componant/AppBarIconsCompontent.dart';
import '../Componant/PersonalInfoComponent.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background3_project_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            AppBarIcons(),
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 50,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            profileImage(),
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 35,
                ),
                Text(
                  "Personal Info",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Containerprofile(),
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 35,
                ),
                Text(
                  "Contact Info",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PersonalInfo(
                      title: "  Phone number", value: "+234 806 2856 543  "),
                  PersonalInfo(
                      title: "  Email", value: "khalidlalsheri@hotmail.com  "),
                ],
              ),
              height: 104,
              width: 365,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromARGB(246, 255, 255, 255),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 240, 240, 240),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 56,
              width: 365,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
