import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';

import '../Veiws/SingUpScreen.dart';

class WelocomComponant extends StatelessWidget {
  const WelocomComponant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(250),
        ),
        Text(
          "Good food at a \n cheap price",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 27,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "You can eat at expensive \n restaurants with \n affordable price",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(75, 85, 99, 100),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 57,
          width: 157,
          child: ElevatedButton(
            onPressed: () {
              context.pushPage(SingUpScreen());
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              elevation: 0,
            ),
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
