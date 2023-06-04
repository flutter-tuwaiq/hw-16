import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  const Cardd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //       appBar: AppBar(

        //         title: Text('Add a payment method',style: TextStyle(color: Colors.black),),
        //         leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.arrow_back),

        // ),
        //             backgroundColor: Colors.white,
        //             elevation: 0,

        //       ),
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon((Icons.arrow_back)),
              SizedBox(
                width: 33,
              ),
              Text(
                'Add payment method',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 197, 37, 25),
                  ),
                  height: 200,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '    **** **** *** 0329',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            ' vild  03/24 ', style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('   CAMILA  WILLOAMSON ',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            height: 200,
            width: 300,
            //     padding: EdgeInsets.symmetric(horizontal: 50),
            //  color: Colors.green,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Name on the card',
                      labelStyle: TextStyle(color: Colors.red),
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                        color: Colors.red,
                      ),
                      border: UnderlineInputBorder()),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Card Number',
                      labelStyle: TextStyle(
                        color: Colors.red,
                      ),
                      prefixIcon: Icon(
                        Icons.card_membership,
                        color: Colors.red,
                      ),
                      border: UnderlineInputBorder()),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Expair date',
                      labelStyle: TextStyle(color: Colors.red),
                      border: UnderlineInputBorder()),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
            width: 260,
            child: ElevatedButton(
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
                'Next',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
