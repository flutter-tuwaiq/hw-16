import 'package:flutter/material.dart';
import 'package:project_flutter/view/direct/Furniture/furniture.dart';

//import '../../shop.dart';

class ItemName extends StatelessWidget {
  const ItemName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "New Arrivals",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Row(
            children: [
              TextButton(
                //---------------
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Furniture();
                      },
                    ),
                  );
                },
                child: const Text(
                  "See All",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: Colors.blue,
              )
            ],
            //-------
          ),
        ],
      ),
    );
  }
}
