import 'package:flutter/material.dart';
import 'package:hw_16/constants/spaces.dart';
import '../../Components/Orders/img_order.dart';
import '../../Components/Orders/order_details.dart';


class SaladPage extends StatefulWidget {
  const SaladPage({super.key});



  @override
  State<SaladPage> createState() => _SaladPage();
}

class _SaladPage extends State<SaladPage> {
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
                    child: const ImageOrder(imgUrl: 'https://www.stockland.com.au/~/media/shopping-centre/common/campaigns/a-to-z-of-mmmm/jamies-hub-page/social-share-images/interesting-salad--social-share_lr.jpg',),
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
                        orderName: 'Salad',
                        Rating: '4,8',
                        orderQuantities: '2000+ Order' ,
                        price: '\$10',
                         orderDescription: 'Trying to stay heleathy ? no worries we got you covererd , fresh salad specially mode and ready for delivry. Order Now !! ',
                          starIcon: halfStar,
                        
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
