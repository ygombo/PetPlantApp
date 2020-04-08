import 'package:flutter/material.dart';
import 'first_screen.dart';

void main() {
  runApp(MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
    home: FirstScreen(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new FirstScreen(),
);
  }
}