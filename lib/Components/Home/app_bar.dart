import 'package:flutter/material.dart';


// final appBarCustom = AppBar(
//   elevation: 0,
//   backgroundColor: Colors.white,
//   toolbarHeight: 12,
// );



class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      // color: Colors.amber,
      //----------------------------------------
      child:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios , size:20,),
                SizedBox(width: 15,),
                Text("Select a meal Type" , style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.w600  ),),
                
              ],
            ),

             Row(
                  children: [
                    Icon(Icons.notifications_outlined , size:35, ),
                    SizedBox(width: 15,),
                    Icon(Icons.search , size:35, ),
                  ],
            ),
          ],
        ),
      ),
    );







  }
}