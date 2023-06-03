import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // --------------- Logo
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                child: Image.asset(
                  'lib/App/assets/images/logo.png',
                ),
              ),
              const Text(
                "Need",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Food",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ],
          ),
          // --------------- icon button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(2),
              elevation: 2,
              backgroundColor: Colors.white,
            ),
            child: const Icon(Icons.search, color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
