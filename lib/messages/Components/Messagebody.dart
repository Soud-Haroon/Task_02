import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/chatData/ListOfMessages.dart';
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
            //================================================================//
            //Need to used my own list so that I can group my chat:
            child: GroupedListView<dynamic, String>(
              elements:
                  _elements, //how to add my demoChatMessage??: in ListOfMessages.dart
              groupBy: (element) => element['group'], //  <--
              groupSeparatorBuilder: (String groupByValue) =>
                  Text(groupByValue),
              itemBuilder: (context, dynamic element) =>
                  Text(element['name']), // <--
              itemComparator: (item1, item2) =>
                  item1['name'].compareTo(item2['name']), // optional // <--
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

// ListView.builder(
//               itemCount: demoChatMessages.length,
//               itemBuilder: (context, index) => Messages(
//                     message: demoChatMessages[index],
// )),
