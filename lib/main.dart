import 'package:flutter/material.dart';
import 'package:petplant/login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

//class MyApp extends StatefulWidget {
//  @override
//  _State createState() => _State();
//}

//class FirstScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('First Route'),
//      ),
//      body: Center(
//        child: RaisedButton(
//          child: Text('Open route'),
//          onPressed: () {
//            // Navigate to second route when tapped.
//          },
//        ),
//      ),
//    );
//  }
//}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      home: Login(),
    );
  }
}