
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg'),
                  radius: 100,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Order Completed',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
                ),
                Text(
                  'Rate our rider' 's delivery',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.red,
                    ),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "leave feedback",
                      prefixIcon: Icon(Icons.text_rotate_up),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(8))),
                ),


             ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[700], //background color of button
                  //  side: BorderSide(width:3, color:Colors.brown), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
