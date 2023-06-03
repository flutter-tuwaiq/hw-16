import 'package:flutter/material.dart';
import 'package:hadeel_hw_16/App/view/homepage.dart';

class AppBarScreen4 extends StatelessWidget implements PreferredSizeWidget {
  const AppBarScreen4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      centerTitle: false,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "My Favorite",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text(
            "Edit",
            style: TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
