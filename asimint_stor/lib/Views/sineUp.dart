import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Image(image: AssetImage("images/signUp.jpg")),
          ),
          const SizedBox(width: 20, height: 20),
          const Padding(
            padding: EdgeInsets.all(11.0),
            child: Row(
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color.fromARGB(255, 255, 5, 5)),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email  ',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: const Color.fromARGB(255, 244, 0, 0),
                        value: true,
                        onChanged: (bool? value) {}),
                    const Text("Remember me"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [Text("Forgot password?")],
                ),
              )
            ],
          ),
          SizedBox(
            width: 380,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 228, 5, 5)),
              child: const Text(
                "Sign up",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don’t have an account? "),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 255, 8, 0)),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "        ________________  Or login with  ________________         ")
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5),
                child: Image(
                    width: 90,
                    image: NetworkImage(
                        "https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5),
                child: Image(
                    width: 60,
                    image: NetworkImage(
                        "https://1000logos.net/wp-content/uploads/2016/11/New-Google-Logo.jpg")),
              )
            ],
          )
        ],
      ),
    );
  }
}
