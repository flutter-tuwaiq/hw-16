import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.blueGrey[800]),
        title: Text("My Orders",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              // color: Colors.blueGrey[800],
              child: Card(
                margin: const EdgeInsets.all(16),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: <Widget>[
                          Text(
                            "24 June || 12:30 || by 18:10",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text("SAR 15.00",
                              style: TextStyle(color: Colors.blueGrey[800], fontSize: 22, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.padding_rounded),
                          Container(
                            width: 10,
                          ),
                          Text("Americano")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.pin_drop),
                          Container(
                            width: 10,
                          ),
                          Text("Riyadh-Saudi Arabia")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 200,
              // color: Colors.blueGrey[800],
              child: Card(
                margin: const EdgeInsets.all(16),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: <Widget>[
                          Text(
                            "24 June || 12:30 || by 18:10",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text("SAR 15.00",
                              style: TextStyle(color: Colors.blueGrey[800], fontSize: 22, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.padding_rounded),
                          Container(
                            width: 10,
                          ),
                          Text("Americano")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.pin_drop),
                          Container(
                            width: 10,
                          ),
                          Text("Riyadh-Saudi Arabia")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 10,
            ),
            Container(
              height: 200,
              // color: Colors.blueGrey[800],
              child: Card(
                margin: const EdgeInsets.all(16),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: <Widget>[
                          Text(
                            "24 June || 12:30 || by 18:10",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text("SAR 15.00",
                              style: TextStyle(color: Colors.blueGrey[800], fontSize: 22, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.padding_rounded),
                          Container(
                            width: 10,
                          ),
                          Text("Americano")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.pin_drop),
                          Container(
                            width: 10,
                          ),
                          Text("Riyadh-Saudi Arabia")
                        ],
                      ),
                    ],
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
