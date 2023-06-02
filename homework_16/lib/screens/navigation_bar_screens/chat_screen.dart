import 'package:flutter/material.dart';
import '../../widgets/background_image.dart';
import '../../widgets/chat_widgets/chat_background.dart';
import '../../widgets/chat_widgets/chat_text_field.dart';
import '../../widgets/chat_widgets/messages_list.dart';
import '../../widgets/chat_widgets/user_info.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackgroundImage(),
          ChatBackground(
            child: Column(
              children: [
                UserInfo(),
                Stack(
                  children: [
                    MessagesList(),
                    ChatTextField(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
