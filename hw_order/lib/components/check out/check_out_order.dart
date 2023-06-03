import 'package:flutter/material.dart';
import '../../models/colors.dart';

class CheckOutOrder extends StatelessWidget {
  const CheckOutOrder(
      {super.key, required this.img, required this.meal, required this.price});

  final String img;
  final String meal;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 332.8,
        height: 99.71,
        child: Card(
          color: ListOfColors.white,
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
          elevation: 7,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(img),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    meal,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ListOfColors.boldBlack),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: ListOfColors.red),
                  ),
                ],
              ),
              const Text(
                'order again',
                style: TextStyle(
                    color: ListOfColors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 7),
              )
            ],
          ),
        ),
      ),
    );
  }
}
