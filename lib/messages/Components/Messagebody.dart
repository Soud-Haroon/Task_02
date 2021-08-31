import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/chatData/Chat.dart';
import 'package:task_blackwhite_02/chatData/ChatMessage.dart';
import 'chat_input.dart';

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: demeChatMessages.length,
                itemBuilder: (context, index) => Messages(
                      message: demeChatMessages[index],
                    ))),
        ChatInputField(),
      ],
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    @required this.message,
  }) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Text('Chat Text'),
      ],
    );
  }
}

//--------------------------------------------------//

