import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "VEGA",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Vega is the second brigtest star in our sky \n You are the first",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
