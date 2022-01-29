import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.dark,
  primaryColor: Colors.lightBlue[800],

  // Define the default font family.
  fontFamily: 'Roboto',

  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline3: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    headline4: TextStyle(fontSize: 26.0, color: Colors.blue, fontWeight: FontWeight.bold),
    headline5: TextStyle(fontSize: 22.0, color: Colors.blue, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 18.0, color: Colors.blue, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
    bodyText2: TextStyle(fontSize: 12.0, fontFamily: 'Roboto', color: Colors.white),
  ),
);