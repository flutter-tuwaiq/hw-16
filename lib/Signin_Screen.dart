import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamang/consts/tamang_colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:bgColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Center(
              child: Text(
            'Sign In',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(24.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: const [
                Text(
                  'Welcome to Tamang\nFood Services',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 40),
                ),
              ]),
              Row(children: const [
                Text(
                  'Enter your Phone number or Email\naddress for sign in. Enjoy your food :)',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ]),
              Row(
                children: const [
                  Text(
                    'Email Address',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'sajin tamang figma@',
                      ),
                      keyboardAppearance: Brightness.light,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'PASSWORD',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () => false,
                        icon: const Icon(
                          FontAwesomeIcons.eyeLowVision,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '********',
                      ),
                      keyboardAppearance: Brightness.light,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/forgot');
                    },
                    child:const  Text(
                      'Forget Password?',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: btnColor),
                    onPressed: () => false,
                    child: const Text('Sign In'),
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Don\'t have account?',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () => false,
                        child: const Text(
                          'Create new account.',
                          style: TextStyle(color: btnColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text('Or')],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0E3055)),
                      onPressed: () => false,
                      child: const Text('CONNECT WITH FACEBOOK'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3E82F6),
                      ),
                      onPressed: () => false,
                      child: const Text('CONNECT WITH GOOGLE'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
