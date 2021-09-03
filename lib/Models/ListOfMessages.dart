import 'package:flutter/material.dart';

enum ChatMessageType {
  text,
  audio,
  image,
  video,
}
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String? text;
  // final String name;
  // final String group;
  final String? date;
  final ChatMessageType? messageType;
  final MessageStatus? messageStatus;
  final bool? isSender;

  ChatMessage({
    this.text,
    this.date,
    // required this.name,
    // required this.group,
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
  });
}

// List<Message> myMsg = [
//   new Message(
//     name: 'anees',
//     group: '01-jan',
//     text: 'Hi Sajol',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'ali',
//     group: '01-jan',
//     text: 'Hello, How are you?',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'jhon',
//     group: '12-jan',
//     text: 'Error happend',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Will',
//     group: '18-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Miranda',
//     group: '30-jan',
//     text: 'Glad you like it',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Danny',
//     group: '30-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'anees',
//     group: '01-jan',
//     text: 'Hi Sajol',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'ali',
//     group: '01-jan',
//     text: 'Hello, How are you?',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'jhon',
//     group: '12-jan',
//     text: 'Error happend',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Will',
//     group: '18-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Miranda',
//     group: '30-jan',
//     text: 'Glad you like it',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Danny',
//     group: '30-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'anees',
//     group: '01-jan',
//     text: 'Hi Sajol',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'ali',
//     group: '01-jan',
//     text: 'Hello, How are you?',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'jhon',
//     group: '12-jan',
//     text: 'Error happend',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Will',
//     group: '18-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Miranda',
//     group: '30-jan',
//     text: 'Glad you like it',
//     isSender: true,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
//   new Message(
//     name: 'Danny',
//     group: '30-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
// ];


//===========================================//
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
