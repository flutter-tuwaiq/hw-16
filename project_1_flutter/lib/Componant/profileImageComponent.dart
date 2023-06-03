
import 'package:flutter/material.dart';

class profileImage extends StatelessWidget {
  const profileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 255, 227, 227),
            radius: 60,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/800px-Pierre-Person.jpg"),
            ),
          ),
          Positioned(
            bottom: 0,
            right: -20,
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 0,
              fillColor: Colors.red,
              child: Icon(
                Icons.mode_edit_outlined,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
