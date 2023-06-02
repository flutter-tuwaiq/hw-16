import 'package:flutter/material.dart';
import 'package:hw_16/components/app_bar.dart';
import 'package:hw_16/constants/spaces.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email = '';
  bool _showButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "LOG IN OR SIGN UP",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              kVSpace16,
              Text(
                "Log in with email address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 56,
              ),
              Text(
                "Email (required)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              kVSpace8,
              TextField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                    _showButton = value.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '  enter your email address',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Visibility(
                visible: _showButton,
                child: SizedBox(
                  height: 62,
                  width: 358,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Login in or Sign up'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
