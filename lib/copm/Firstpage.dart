import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/pagetwo/SecandPage.dart';
import 'package:flutter_application_8/thirdPage/ThirdpPage.dart';


class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKvN1tFk_FVcGKpwEeB2kqbIPC6kIhsLWBeg&usqp=CAU',width: 400,height: 400,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                 width: 100,
                       height: 100,
                       child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 4, 4),
                 ),
                 onPressed: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ThirdpPage()));},
                 child: const Text(
                   "start",
                 
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                 ),
                       ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
       );
    
        
      
        
        
      
}
}

