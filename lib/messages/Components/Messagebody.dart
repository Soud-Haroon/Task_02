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
            child: GroupedListView<Message, String>(
              elements: demoMessages,
              groupBy: (element) => element.group.toString(),
              groupComparator: (value1, value2) => value2.compareTo(value1),
              itemComparator: (item1, item2) =>
                  item1.name.toString().compareTo(item2.name.toString()),
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              groupSeparatorBuilder: (String value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              itemBuilder: (c, element) {
                return Card(
                  elevation: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        // contentPadding: EdgeInsets.symmetric(
                        //     horizontal: 20.0, vertical: 10.0),
                        Icon(Icons.account_circle),
                        Text(element.name.toString()),
                        SizedBox(width: 50),
                        Text(element.time.toString()),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        //---------------------------------------------------//
        ChatInputField(),
      ],
    );
  }
}

class Message {
  final String? name;
  final String? group;
  final String? time;

  Message({this.name, this.group, this.time});
}

List<Message> demoMessages = [
  Message(name: 'Soud Haroon',group: 'Team A',time: '02:00'),
  Message(name: 'Ben',group: 'Team B',time: '04:00'),
  Message(name: 'Jam',group: 'Team C',time: '09:00'),
  Message(name: 'Sam Flynn',group: 'Team A',time: '02:00'),
  Message(name: 'Will Smith',group: 'Team B',time: '04:00'),      
  Message(name: 'Aculite',group: 'Team B',time: '08:00'),
  Message(name: 'Jason',group: 'Team D',time: '01:00'),
];
//===============================================//

// ListView.builder(
//               itemCount: demoChatMessages.length,
//               itemBuilder: (context, index) => Messages(
//                     message: demoChatMessages[index],
//                   )),