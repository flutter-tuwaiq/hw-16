import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/copm/Firstpage.dart';
import 'package:flutter_application_8/pagetwo/SecandPage.dart';

class partlogin extends StatelessWidget {
  const partlogin({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
return  Column(
  children: [
      SingleChildScrollView(
        child: ClipRRect(
           borderRadius: BorderRadius.circular(10.0),
        child:   SingleChildScrollView(
          child: Container(color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
    decoration: InputDecoration(
    labelText: 'user Name',
    filled: true,
    fillColor: const Color.fromARGB(255, 250, 189, 184),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide.none,
    ),
  ),
),
                const SizedBox(height: 10.0),
                TextField(
  decoration: InputDecoration(
    labelText: 'password',
    filled: true,
    fillColor: const Color.fromARGB(255, 250, 189, 184),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide.none,
    ),
  ),
),
                SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                      },
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Passwors?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [  SizedBox(height: 50,width: 200,
                    child: ClipRRect(borderRadius: BorderRadius.circular(20.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          onPressed: () { Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Firstpage()),);},
                          child: Text('Sign in',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),
                        ),
                    ),
                  ),],)
                  ],
                ),
              ],
            ),
          ),
        ),
          ),
      )
  ]
    );
  

  }
}