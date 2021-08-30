import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/My_Buttons/Filloutline_Button.dart';
import 'package:task_blackwhite_02/constColors.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: PrimaryGreen,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recents Message'),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(press: () {}, text: 'Active', isFilled: false),
            ],
          ),
        )
      ],
    );
  }
}
