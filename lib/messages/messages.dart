import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/chatData/ChatMessage.dart';
import '../constColors.dart';
import 'Components/Text_Messages.dart';
import 'Components/Video_message.dart';
import 'Components/audio_message.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessages(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender! ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender!)
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
          SizedBox(width: kDefaultPadding / 2),
          messageContaint(message),
        ],
      ),
    );
  }
}

//=======================================================//


