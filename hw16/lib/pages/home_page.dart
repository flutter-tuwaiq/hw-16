import 'package:flutter/material.dart';
import 'package:hw16/pages/signin_page.dart';

import '../components/button.dart';
import '../components/circle.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
        body: Column(
          children: [
            const Image(image: AssetImage('assets/logo.png'),
            ),
             Stack(children: [
              const Padding(
              padding: EdgeInsets.symmetric(vertical: 24,horizontal:92),
              child: Text("Feel yourself like",style: TextStyle(fontSize: 28,fontFamily: 'Poppins'),),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 58,horizontal:136),
              child: Text("a barista!",style: TextStyle(fontSize: 28,fontFamily: 'Poppins'),),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 98,horizontal:106),
              child: Text('Magic coffee on order.',style: TextStyle(color: Colors.grey,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 164,horizontal:159),
              child: Row(
                children: [
                  Container(
                    width: 33,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 37, 80, 107),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal:10),
                    child: Circle(),
                  ),
                  const Circle(),
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 268,
                  width: 400,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(262, 0, 0, 0),
                  child: Button(pageName: SigninPage(),),
                ),
              ],
            ),
            ],
            ),
          ],
        ),
    );
  }
}
