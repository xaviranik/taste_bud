import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taste_bud/screens/home_screen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Taste Bud',
  theme: ThemeData(
    fontFamily: 'Lato',
    scaffoldBackgroundColor: Colors.grey[50],
    brightness: Brightness.light,
    accentColor: Colors.deepOrange,
    primaryColor: Colors.deepOrange[800],
    cursorColor: Colors.deepOrange[400],
    hintColor: Colors.white
  ),
  home: Home(),
));

