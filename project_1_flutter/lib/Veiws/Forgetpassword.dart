import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_1_flutter/Componant/TextFeldsComponant.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';
import 'package:project_1_flutter/Veiws/LoginScreen.dart';

import '../Componant/SingupAndLoginBottons.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
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
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
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
                    Icon(
                      Icons.lock,
                      color: Colors.red,
                      size: 70,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 140,
                        ),
                        Text(
                          "Forget password",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Provide your account,s email for which you \nwant to reset your password",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFeldsComponant(
                        titie: "  Email address",
                        value: "  khalidalshehri@hotmail.com"),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 56,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          context.pushPage(LoginScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          "Send",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
