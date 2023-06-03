import 'package:flutter/material.dart';
import 'package:hw_16/constants/Icons.dart';
import '../../Components/Orders/img_order.dart';
import '../../Components/Orders/order_details.dart';


class MainDishes extends StatefulWidget {
  const MainDishes({super.key,});
  


  @override
  State<MainDishes> createState() => _MainDishes();
}

class _MainDishes extends State<MainDishes> {
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
                    child: const ImageOrder(imgUrl: 'https://www.thespruceeats.com/thmb/NKrzAkVokEycHnVDEX6vi8Hg3RQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/creamy-tomato-pasta-481963-Hero-5b6afcf6c9e77c0050e73162.jpg',),
                  ),
                  
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
                        orderName: 'Jollof Rice',
                        Rating: '5 Rating',
                        orderQuantities: '2000+ Order' ,
                        price: '\$20',
                         orderDescription: 'Tasty well seasoned Nigerin jollof rice popularly referred to as the best jollof in the world . Order now and get served a hot nice meal ',
                          starIcon: fullStar,
                        
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
