import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Chat_Screen/Components/body.dart';
import 'package:task_blackwhite_02/constColors.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      //-----------------------//
      body: MainBody(),
      //----------------------//
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryGreen,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      //-------------------------//
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text('Chats'),
      backgroundColor: kPrimaryGreen,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
