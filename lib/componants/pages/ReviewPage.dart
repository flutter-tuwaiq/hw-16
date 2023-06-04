// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hw_16/componants/CustomButton.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(574),
        child: Padding(
          padding: const EdgeInsets.only(top:200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/susses.png'),
              ),
              const Text(
                'Thank You!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              const Text(
                'Order Completed',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  'Please rate your last Driver',
                  style: TextStyle(
                      color: Colors.grey.shade400, fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade700,
                      size: 30,
                    ),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade700,
                      size: 30,
                    ),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade700,
                      size: 30,
                    ),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.orange.shade100,
                      size: 30,
                    ),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.orange.shade100,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade200,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 40,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Leave feadback',
                  contentPadding: const EdgeInsets.only(left: 34.0, top: 6),
                  hintStyle: TextStyle(
                      color: Colors.grey.shade300, fontWeight: FontWeight.w600),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 26.0, right: 16),
                    child: Icon(
                      Icons.note_alt_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: CustomButton(
                    title: 'Submit',
                    width: 80,
                    hight: 20,
                    forward: false,
                    routeName: '/start',
                    buttonColor: Colors.red,
                    textColor: Colors.white,
                  ),
                ),
                CustomButton(
                  title: 'Skip',
                  width: 20,
                  hight: 20,
                  forward: false,
                  routeName: '/start',
                  buttonColor: Colors.white,
                  textColor: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
