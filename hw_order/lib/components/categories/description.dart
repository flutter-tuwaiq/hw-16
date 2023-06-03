import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const SizedBox(
              width: 59.11,
              height: 51,
              child: Card(
                color: Colors.white,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  size: 24,
                  color: Colors.yellow,
                ),
              )),
          Column(
            children: const [
              Text(
                'Ratings',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Text(
                '4+',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          )
        ],
      ),
      Row(
        children: [
          const SizedBox(
              width: 59.11,
              height: 51,
              child: Card(
                color: Colors.white,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  FontAwesomeIcons.solidClock,
                  size: 26.22,
                ),
              )),
          Column(
            children: const [
              Text(
                'Delivery Time',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Text(
                '20-30 minutes',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          )
        ],
      ),
    ]);
  }
}
