import 'package:flutter/material.dart';

import '../../consts/chat_colors.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    super.key,
    required this.messageContent,
    required this.sentByMe,
  });

  final String messageContent;
  final bool sentByMe;

  @override
  Widget build(BuildContext context) {
    double bottomLeftRadius = 0;
    double bottomRightRadius = 50;
    Color? messageColor = mainColor;
    Color messageTextColor = Colors.white;
    MainAxisAlignment direction = MainAxisAlignment.start;

    if (sentByMe) {
      bottomLeftRadius = 50;
      bottomRightRadius = 0;
      messageColor = Colors.white;
      messageTextColor = Colors.black;
      direction = MainAxisAlignment.end;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: direction,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(50),
                topRight: const Radius.circular(50),
                bottomLeft: Radius.circular(bottomLeftRadius),
                bottomRight: Radius.circular(bottomRightRadius)),
            child: Container(
              color: messageColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  messageContent,
                  style: TextStyle(fontSize: 20, color: messageTextColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
