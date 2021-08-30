import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_blackwhite_02/constColors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: PrimaryGreen,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(),
    iconTheme: IconThemeData(color: ContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: ContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: PrimaryGreen,
      secondary: SecondaryDarkYellow,
      error: ErrorRedColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: PrimaryGreen,
    scaffoldBackgroundColor: ContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: ContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: ContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: PrimaryGreen,
      secondary: SecondaryDarkYellow,
      error: ErrorRedColor,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
