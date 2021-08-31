import 'package:flutter/material.dart';
 import 'package:task_blackwhite_02/chatData/ChatMessage.dart';
import 'package:task_blackwhite_02/constColors.dart';
import '../messages.dart';
import 'chat_input.dart';

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Messages(
                    message: demeChatMessages[index],
                  )),
        )),
        ChatInputField(),
      ],
    );
  }
}

//===============================================//
