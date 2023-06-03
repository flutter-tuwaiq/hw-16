import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_1_flutter/Componant/SingupAndLoginBottons.dart';
import 'package:project_1_flutter/Componant/TextFeldsComponant.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';
import 'package:project_1_flutter/Veiws/Forgetpassword.dart';
import 'package:project_1_flutter/Veiws/ProfileScreen.dart';
import 'package:project_1_flutter/Veiws/SingUpScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                        TextButton(
                          onPressed: () {
                            context.pushPage(SingUpScreen());
                          },
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 250,
                        ),
                        Container(
                          height: 2,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFeldsComponant(
                        titie: "  Email address", value: "  khalid alshehri"),
                    TextFeldsComponant(
                        titie: "  Password", value: "  **** **** ****"),
                    Row(
                      children: [
                        SizedBox(
                          width: 240,
                        ),
                        TextButton(
                          onPressed: () {
                            context.pushPage(Forgetpassword());
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    SingupAndLogin(
                      titie: "Login",
                      googla: "Login with Google",
                      Screen: ProfileScreen(),
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
