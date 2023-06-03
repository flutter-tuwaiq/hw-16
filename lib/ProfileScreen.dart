

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text("Name"),
              subtitle: Text("Khaled"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
              ),
              title: Text("Phone Number "),
              subtitle: Text("+9665555555"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
              ),
              title: Text("Email"),
              subtitle: Text("test@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(
                Icons.pin_drop,
              ),
              title: Text("Coffee Address"),
              subtitle: Text("Riyadh-SaudiArabia"),
              trailing: Icon(Icons.edit),
            ),
            Container(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage("assets/images/barcode.png"), height: 150),
            )
          ],
        ),
      ),
    );
  }
}
