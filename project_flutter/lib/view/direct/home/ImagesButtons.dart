import 'package:flutter/material.dart';

class ImagesButtons extends StatelessWidget {
  const ImagesButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                elevation: 0,
                mini: true,
                onPressed: () {},
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.undo_outlined,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    mini: true,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.ios_share,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    elevation: 0,
                    mini: true,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 200,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Black Friday",
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  Text(
                    "Sale upto \n 70% off",
                    // textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
