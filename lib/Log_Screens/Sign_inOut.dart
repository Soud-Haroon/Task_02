import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/My_Buttons/Primary_Button.dart';
import 'package:task_blackwhite_02/constColors.dart';

class SignInorOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: Column(
          children: [
            Spacer(flex: 2),
            //-----------------------------------------------------//
            Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                height: 150),
            //-----------------------------------------------------//
            Spacer(),
            PrimaryButton(
              text: 'Sign In',
              press: () {},
            ),
            //--------------------//
            SizedBox(height: DefaultPadding * 1.5),
            //-------------------//
            PrimaryButton(
              text: 'Sign up',
              press: () {},
              color: Theme.of(context).colorScheme.secondary,
            ),
            //-----------------//
            Spacer(flex: 2),
          ],
        ),
      )),
    );
  }
}
