import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

ProgressDialog pr;

class Addplant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Plant'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),);
  }
}