import 'package:flutter/material.dart';
import 'package:tamang/consts/tamang_colors.dart';

class RestEmailScreen extends StatefulWidget {
  const RestEmailScreen({super.key, required this.textEmail});
  final String textEmail;

  @override
  State<RestEmailScreen> createState() => _RestEmailScreenState();
}

class _RestEmailScreenState extends State<RestEmailScreen> {
  final String textEmail = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       backgroundColor:bgColor,
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Forgot\nPassword',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Reset email sent',
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    'We have sent a instructions email to:',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        textEmail,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () => false,
                        child: const Text(
                          'Having problem?',
                          style: TextStyle(color: btnColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: btnColor),
                      onPressed: () => false,
                      child: const Text('SEND AGAIN'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Image(
                image: AssetImage('images/image03.png'),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
