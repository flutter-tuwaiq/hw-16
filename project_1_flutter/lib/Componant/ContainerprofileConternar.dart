
import 'package:flutter/material.dart';
import 'package:project_1_flutter/Componant/PersonalInfoComponent.dart';

class Containerprofile extends StatelessWidget {
  const Containerprofile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // SafeArea(
          PersonalInfo(
            title: "  Your name",
            value: "khalid alshehri  ",
          ),
          PersonalInfo(
            title: "  Occupation",
            value: "Manager  ",
          ),
          PersonalInfo(
            title: " Employer",
            value: "Overlay Design  ",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "  U.S Citizen",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.toggle_on,
                color: Colors.red,
                size: 50,
              ),
            ],
          ),
        ],
      ),
      height: 208,
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
    );
  }
}
