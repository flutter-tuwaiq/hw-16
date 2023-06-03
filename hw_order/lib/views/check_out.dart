import 'package:flutter/material.dart';
import 'package:hw_order/models/colors.dart';

import '../components/check out/check_out_order.dart';
import '../components/check out/check_out_total.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ListOfColors.white,
          elevation: 0,
          title: const Text(
            'Check out',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: ListOfColors.boldBlack),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                CheckOutOrder(
                    img: 'images/image 45.png',
                    meal: 'King Burger',
                    price: '₦2500'),
                CheckOutOrder(
                    img: 'images/image 46.png',
                    meal: 'Spicy Hotdog',
                    price: '₦2500'),
                CheckOutOrder(
                    img: 'images/download__1_-removebg-preview (1) 1.png',
                    meal: 'Cocacola',
                    price: '₦300'),
              ],
            ),
            const CheckOutTotal(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'deliveryAddress',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color.fromRGBO(0, 0, 0, 0.8)),
                ),
                const Text(
                  'no 7a adedoyin street G.R.A Benin city',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 0.3)),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(390),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        backgroundColor: ListOfColors.red),
                    onPressed: (() {}),
                    child: const Text('BUY NOW'))
              ],
            )
          ],
        ));
  }
}
