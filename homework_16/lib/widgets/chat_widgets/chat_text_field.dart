import 'package:flutter/material.dart';
import '../../consts/chat_colors.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField({
    super.key,
  });

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 192, 8, 0),
      child: Column(
        children: <Widget>[
          SizedBox(height: _animation.value),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                backgroundColor: mainColor,
                elevation: 0,
                mini: true,
                onPressed: () {},
                child: const Icon(Icons.camera_alt),
              ),
              SizedBox(
                height: 55,
                width: 270,
                child: Stack(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      focusNode: _focusNode,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton(
                        backgroundColor: mainColor,
                        elevation: 0,
                        mini: true,
                        onPressed: () {},
                        child: const Icon(Icons.send),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
