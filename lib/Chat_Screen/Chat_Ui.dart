import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Chat_Screen/Components/body.dart';
import 'package:task_blackwhite_02/constColors.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: MainBody(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text('Chats'),
      backgroundColor: PrimaryGreen,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
