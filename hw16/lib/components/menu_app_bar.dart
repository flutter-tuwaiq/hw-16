import 'package:flutter/material.dart';

final menuAppBar = AppBar(
  backgroundColor:  Colors.white,
  elevation: 0,
  automaticallyImplyLeading:false,
  title: const Row(
    children: [
      
      Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Text('Welcome!',style: TextStyle(color: Colors.grey,fontSize: 14),),
          Text('Alex',style: TextStyle(color: Colors.black,fontSize: 14),),
        ],
      ),
      SizedBox(
        width: 228,
      ),
      Icon(Icons.shopping_cart_outlined,color: Colors.black,),
      SizedBox(
        width:16 ,
      ),
      Icon(Icons.person_outlined,color: Colors.black,)
    ],
    
  ),
);