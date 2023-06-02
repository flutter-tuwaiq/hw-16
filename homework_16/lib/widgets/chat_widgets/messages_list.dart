import 'package:flutter/material.dart';
import 'chat_message.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          ChatMessage(
            messageContent: "كم بيض الحمام؟",
            sentByMe: true,
          ),
          ChatMessage(
            messageContent: "1",
            sentByMe: false,
          ),
          ChatMessage(
            messageContent: "هممممم",
            sentByMe: true,
          ),
          ChatMessage(
            messageContent: "أجل كم؟",
            sentByMe: false,
          ),
          ChatMessage(
            messageContent: "2",
            sentByMe: true,
          ),
          ChatMessage(
            messageContent: "همممممم",
            sentByMe: false,
          ),
          ChatMessage(
            messageContent: "أجل كم؟",
            sentByMe: true,
          ),
          ChatMessage(
            messageContent: "3",
            sentByMe: false,
          ),
        ],
      ),
    );
  }
}
