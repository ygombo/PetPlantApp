import 'package:flutter/material.dart';
import 'package:petplant/login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      home: Login(),
    );
  }
}