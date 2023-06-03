import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';
import 'package:project_1_flutter/Veiws/LoginScreen.dart';

class SingupAndLogin extends StatelessWidget {
  SingupAndLogin({
    super.key,
    required this.titie,
    required this.googla,
    this.Screen,
  });
  String? titie = "";
  String? googla = "";
  var Screen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 256,
          child: ElevatedButton(
            onPressed: () {
              context.pushPage(Screen);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(
              titie!,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 2,
          width: 148,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Color.fromARGB(210, 212, 216, 212),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 50,
          width: 256,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Color.fromARGB(244, 244, 244, 244),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //     Image.asset("assets/googal_icon.jpg") as IconData?),
                Image(
                  image: AssetImage("assets/googal_icon.jpg"),
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 24,
                ),
                Text(
                  googla!,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
