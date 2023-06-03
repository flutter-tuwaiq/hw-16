import 'package:flutter/material.dart';

class OrderDescription extends StatelessWidget {
  const OrderDescription({super.key, required this.orderDescription});


  final String orderDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Text(orderDescription),
      ),
    );
  }
}
