import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/chatData/ChatMessage.dart';
import '../constColors.dart';
import 'Components/Text_Messages.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
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
          TextMessages(message: message),
        ],
      ),
    );
  }
}

//============================================//