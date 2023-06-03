import 'package:flutter/material.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';
import 'package:project_1_flutter/Veiws/LoginScreen.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),

            Container(
              // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 227, 227),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {
                  context.pushPage(LoginScreen());
                },
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.red,
                ),
              ),
            ),

            // Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 80)),

            SizedBox(
              width: 230,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 227, 227),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
