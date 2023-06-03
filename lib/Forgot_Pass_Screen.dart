import 'package:flutter/material.dart';
import 'package:tamang/Rest_Email_Screen.dart';
import 'package:tamang/consts/tamang_colors.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  final TextEditingController _textController = TextEditingController();
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
          title: const Center(
              child: Text(
            'Forgot \nPassword',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
        ),
        body: SafeArea(
            minimum: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Forgot password',
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  child: Expanded(
                    child: Text(
                      'Enter your email address and we will send you a reset instructions.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'EMAIL ADDRESS',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'sajin tamang figma@',
                        ),
                        keyboardAppearance: Brightness.light,
                      ),
                    ),
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
                            backgroundColor:btnColor),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RestEmailScreen(
                                textEmail: _textController.text,
                              ),
                            ),
                          );
                        },
                        child: const Text('RESET PASSWORD'),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
