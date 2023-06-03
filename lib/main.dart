import 'package:flutter/material.dart';
import 'Components/Orders/img_order.dart';
import 'Components/Orders/order_details.dart';
import 'Screen/Categories/MainDishesPage.dart';
import 'Screen/Categories/FastFood.dart';
import 'Screen/Categories/Salad.dart';
import 'Screen/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
         routes:{
        "/MainDishes" : (context) => const MainDishes(),
        "/Fastfood" : (context) => const OederPage(),
        "/Salad" : (context) => const SaladPage(),
        
      },
      home: const Scaffold(
        body:  HomePage()
      ),
    );
  }
}





// Stack(
//           children: <Widget>[
//             // The containers in the background
//             Column(
//               children: <Widget>[
//                 Container(
//                   height: MediaQuery.of(context).size.height * .65,
//                   color: Colors.blue,
//                   child: ImageOrder(),
//                 ),
//                 // Container(
//                 //   height: MediaQuery.of(context).size.height * .35,
//                 //   color: const Color.fromARGB(255, 175, 0, 0),
//                 // ),
//               ],
//             ),
//             // The card widget with top padding,
//             // incase if you wanted bottom padding to work,
//             // set the `alignment` of container to Alignment.bottomCenter
//             Container(
              
//               alignment: Alignment.topCenter,
//               padding: EdgeInsets.only(
//                       top: MediaQuery.of(context).size.height * .48,
              
//               ),
//               child: ClipRRect(
//                 borderRadius:  BorderRadius.circular(55),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   child:   Container(
//                     color: Colors.white,
                    
                    
//                     child: DetailsOrder(),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),