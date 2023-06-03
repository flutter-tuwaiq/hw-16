import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_1_flutter/Componant/SingupAndLoginBottons.dart';
import 'package:project_1_flutter/Componant/TextFeldsComponant.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';
import 'package:project_1_flutter/Veiws/LoginScreen.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background2_project_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: 225,
          ),
          Container(
            // SizedBox(
            //   height: 9,
            // ),
            height: 560.5,
            width: 413,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 8,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Color.fromRGBO(255, 240, 240, 1),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.pushPage(LoginScreen());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 8,
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 55,
                    ),
                    Container(
                      height: 2,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                TextFeldsComponant(
                  titie: "  Full Name",
                  value: "  Khalid alshehri",
                ),
                TextFeldsComponant(
                  titie: "  Email address",
                  value: "  khalid@hotmail.com",
                ),
                TextFeldsComponant(
                  titie: "  Password",
                  value: "  **** **** ****",
                ),
                SizedBox(
                  height: 24,
                ),
                SingupAndLogin(
                  titie: "Sing Up",
                  googla: "Sign up with google",
                  Screen: LoginScreen(),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
