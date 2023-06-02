import 'package:flutter/material.dart';

class Sort extends StatelessWidget {
  const Sort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Text(
                "all",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 3,
                width: 20,
                color: Colors.grey[600],
              )
            ],
          ),
          const Text(
            "pictures",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            "videos",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
