import 'package:flutter/material.dart';
import 'package:hw_16/constants/Icons.dart';
import '../../Components/Orders/img_order.dart';
import '../../Components/Orders/order_details.dart';


class OederPage extends StatefulWidget {
  const OederPage({super.key});

  @override
  State<OederPage> createState() => _OederPageState();
}

class _OederPageState extends State<OederPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
            children: <Widget>[
              
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .65,
                    // color: Colors.white,
                    child: const ImageOrder(imgUrl: 'https://insanelygoodrecipes.com/wp-content/uploads/2020/02/Burger-and-Fries.jpg',),
                  ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height * .35,
                  //   color: const Color.fromARGB(255, 175, 0, 0),
                  // ),
                ],
              ),
           
              Container(
                
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .48,
                
                ),
                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(55),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:   Container(
                      color: Colors.white,
                      
                      
                      child: const DetailsOrder(
                        orderName: 'Chicken Burger',
                        Rating: '4,8 Rating',
                        orderQuantities: '2000+ Order' ,
                        price: '\$12',
                         orderDescription: 'Delicious and tasty cheese burger one of tasty rown\'s finest , it has a record sale of 2000 orders and rating of 4.8 since it\'s introduction . no dull yourself oh!!',
                          starIcon: halfStar ,
                        
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
