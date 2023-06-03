
import 'package:flutter/material.dart';

class ButtonBuy extends StatelessWidget{
  const ButtonBuy({super.key});

  @override
  Widget build(BuildContext context) {
    
     return  Center(
       child: ClipRect(
        // borderRadius: BorderRadius.circular(20),

          // SizedBox(height: 10,),
          child: Container(
            height: 50,
            width: 300,
            
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ), onPressed: () {},
              child: const Text("Add to cart"),
            ),
          ),
     
         
       ),
     );
  }
}