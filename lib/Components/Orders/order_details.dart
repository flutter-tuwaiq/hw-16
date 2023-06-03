
import 'package:flutter/material.dart';

import '../../constants/spaces.dart';
import 'button_bar.dart';
import 'order_descraption.dart';



class DetailsOrder extends StatefulWidget {
  const DetailsOrder({super.key, required this.orderName, required this.Rating, required this.orderQuantities, required this.price, required this.orderDescription, required this.starIcon});

  final String orderName;
  final String Rating;
  final String orderQuantities;
  final String price;
  final String orderDescription;
  final Icon starIcon;

  @override
  State<DetailsOrder> createState() => _DetailsOrderState();
}

class _DetailsOrderState extends State<DetailsOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
               widget.orderName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.redAccent.withOpacity(0.2),
                    radius: 15,
                    child: const Icon(
                      Icons.location_pin,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.redAccent.withOpacity(0.2),
                    radius: 15,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 widget.starIcon,
                  const SizedBox(
                    width: 4,
                  ),
                  Text(widget.Rating),
                ],
              ),
               Row(
                children: [
                  const Icon(
                    Icons.shop,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(widget.orderQuantities),
                ],
              ),
            ],
          ),
          //-------------------------------------------------------------------------------------
          const SizedBox(height: 25,),
          OrderDescription(orderDescription: widget.orderDescription,),

          const SizedBox(height: 40,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               CircleAvatar(
                radius: 10,
                backgroundColor: Colors.redAccent.withOpacity(0.2),
                child:  const Icon(Icons.remove ,size: 14,color: Colors.redAccent,),
               ),
               const SizedBox(width: 7,),
               const Text("1" , style: TextStyle(color:Colors.redAccent),),
               const SizedBox(width: 7,),
                
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.redAccent.withOpacity(0.2),
                 
                  child: const Icon(Icons.add , size: 14,color: Colors.redAccent),
                ),
              ],
            ),
              Row(
              children: [
               Text(widget.price , style: const TextStyle(color:Colors.red , fontWeight: FontWeight.bold),),

            ],
          ),
        ], 
      ),
      const SizedBox(height: 20,),
          const ButtonBuy()
      ],
    ),
  );
  }
}
