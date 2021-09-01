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
                  _elements, //how to add my list(demoChatMessage)??: in ListOfMessages.dart
              groupBy: (element) => element[
                  'group'], //    <-- how to compare it by date added in list(demoChatMessage)
              groupSeparatorBuilder: (String groupByValue) =>
                  Text(groupByValue),
              itemBuilder: (context, dynamic element) =>
                  Text(element['name']), // <--
              itemComparator: (item1, item2) => item1['name'].compareTo(item2[
                  'name']), // optional // <-- and add Text from list(demoChatMessage)
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC,

              //========================================= // optional
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
