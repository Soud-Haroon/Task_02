import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/My_Buttons/Filloutline_Button.dart';
import 'package:task_blackwhite_02/chatData/Chat.dart';
import 'package:task_blackwhite_02/constColors.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: PrimaryGreen,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recents Message'),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(press: () {}, text: 'Active', isFilled: false),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard())),
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    this.chat,
  }) : super(key: key);
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(chat.image),
        ),
      ],
    );
  }
}
