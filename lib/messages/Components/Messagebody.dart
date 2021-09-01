import 'package:flutter/material.dart';
// import 'package:task_blackwhite_02/chatData/ListOfMessages.dart';
import 'package:task_blackwhite_02/constColors.dart';
// import '../messages.dart';
import 'chat_input.dart';
import 'package:grouped_list/grouped_list.dart';

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GroupedListView<dynamic, String>(
              elements: _elements,
              groupBy: (element) => element['group'],
              groupSeparatorBuilder: (String groupByValue) =>
                  Text(groupByValue),
              itemBuilder: (context, dynamic element) => Text(element['name']),
              itemComparator: (item1, item2) =>
                  item1['name'].compareTo(item2['name']), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC,
              //--------------------------- // optional
              // itemBuilder: (c, element) {
              //   return Card(
              //     elevation: 8.0,
              //     margin:
              //         new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              //     child: Container(
              //       child: ListTile(
              //         contentPadding: EdgeInsets.symmetric(
              //             horizontal: 20.0, vertical: 10.0),
              //         leading: ImageIcon(NetworkImage(
              //             'http://www.pngall.com/wp-content/uploads/2017/04/IPL-Logo-2017-PNG.png')),
              //         title: Text(element['name']),
              //       ),
              //     ),
              //   );
              // },
            ),
          ),
        ),
        //---------------------------------------------------//

        //---------------------------------------------------//
        ChatInputField(),
      ],
    );
  }
}

// List _elements = [
//   {'name': 'Virat Kohli', 'date': 'Today'},
//   {'name': 'Rohit Sharma', 'date': '3 August 2021'},
//   {'name': 'AB de Villiers', 'date': '1 jun 2021'},
//   {'name': 'Jasprit Bumrah', 'date': 'Today'},
//   {'name': 'KL Rahul', 'date': '3 August 2021'},
//   {'name': 'Md. Shammi', 'date': '2 jul 2021'},
// ];

List _elements = [
  {'name': 'John', 'group': 'Team C'},
  {'name': 'Will', 'group': 'Team B'},
  {'name': 'Beth', 'group': 'Team A'},
  {'name': 'Miranda', 'group': 'Team B'},
  {'name': 'Mike', 'group': 'Team C'},
  {'name': 'Danny', 'group': 'Team C'},
  {'name': 'Ali', 'group': 'Team D'},
];
//===============================================//

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String? text;
  final ChatMessageType? messageType;
  final MessageStatus? messageStatus;
  final String date;
  final bool? isSender;

  ChatMessage({
    this.text,
    required this.date,
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
  });

  String get myDate {
    return date;
  }
}

List demoChatMessages = [
  ChatMessage(
    text: "Hi Sam,",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: '1 Sep 2021',
    isSender: false,
  ),
  ChatMessage(
    text: "Hello, How are you?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: '20 August 2021',
    isSender: true,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Error happend",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "This looks great man!!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "Glad you like it",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Hi...!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Send me Location",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Where are you???",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "I'm Home...",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "See you on Monday...",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "Hello? Whats for launch????",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "....",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Meet me at KFC",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "Ben???",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Yes",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "I forgot..",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "I'll be there...",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  ChatMessage(
    text: "Hello World!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: 'Today',
    isSender: true,
  ),
  ChatMessage(
    text: "Hello you :)",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
];

//===============================================//


// ListView.builder(
//               itemCount: demoChatMessages.length,
//               itemBuilder: (context, index) => Messages(
//                     message: demoChatMessages[index],
//                   )),