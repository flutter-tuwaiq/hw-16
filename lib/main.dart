import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homwork/Coffee.dart';

import 'MyOrderScreen.dart';
import 'ProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      // statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Brightness.dark
    ));

    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height - 10;

    List<Coffee> coffees = [
      Coffee("Cappuccino", "assets/images/cap.jpg"),
      Coffee("Americano", "assets/images/americano.jpg"),
      Coffee("Latte", "assets/images/latte.jpg"),
      Coffee("Flat white", "assets/images/flatwhite.jpg"),
      Coffee("Cortado", "assets/images/cortado.jpg"),
      Coffee("Espresso", "assets/images/expresso.jpg"),
      Coffee("Caffè mocha", "assets/images/cap.jpg"),
      Coffee("Caffè macchiato", "assets/images/macchiato.jpg"),
    ];

    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 10,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: 60,
                  color: Colors.white,
                  child: topbar(context),
                ),
                Container(
                  height: 30,
                ),
                Container(
                    margin: const EdgeInsetsDirectional.all(12),
                    padding: const EdgeInsetsDirectional.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[800],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    height: screenH,
                    child: listOfItems(coffees)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topbar(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // color: Colors.amber,
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontSize: 20, color: Colors.grey.withAlpha(200)),
                  )),
              Text(
                "Khaled",
                style: TextStyle(fontSize: 26, color: Colors.blueGrey[800],fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Spacer(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.blueGrey[800])),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );
                },
                icon: Icon(Icons.person, color: Colors.blueGrey[800])),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyOrderScreen()),
                  );
                },
                icon: Icon(Icons.receipt_long, color: Colors.blueGrey[800])),
          ],
        ),
      ],
    );
  }

  Widget Item(List<Coffee> coffee, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 250.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage(coffee[index].photo)),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.redAccent,
            ),
          ),
          // Image(
          //   image: AssetImage(coffee[index].photo),
          //   fit: BoxFit.cover,
          //   height: 140,
          //   width: 300,
          // ),
          Container(
            height: 10,
          ),
          Text(
            coffee[index].name,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
    );
  }

  Widget listOfItems(List<Coffee> coffees) {
    return ListView.builder(
      itemCount: coffees.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: EdgeInsetsDirectional.all(10),
            height: 240,
            // width: 60,
            child: Item(coffees, index));
      },
    );
  }

}




