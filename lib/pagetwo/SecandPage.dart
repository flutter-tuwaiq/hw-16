import 'package:flutter/material.dart';
import 'package:flutter_application_8/FuorPage/projectditl.dart';
import 'package:flutter_application_8/copm/Firstpage.dart';
import 'package:flutter_application_8/thirdPage/ThirdpPage.dart';
import 'package:flutter_application_8/thirdPage/partlogin.dart';

class SecandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKvN1tFk_FVcGKpwEeB2kqbIPC6kIhsLWBeg&usqp=CAU"),
            Center(
              child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                      child: Container(height: 400,width: 400,
                            color: const Color.fromARGB(255, 244, 20, 4),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          'Welcome',textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Expanded(
                        child: Text(
                          'One of the most famous shapes in the world is the iconic fluted lines of the Coca-Cola bottle',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                              child: const Text(
                                'Sign  up'
                                ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyContainer()),
                                );
                              },
                            ),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                              child: const Text(
                                'sign in',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ThirdpPage()),
                                );
                              },
                            ),
                          ],
                        ),
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