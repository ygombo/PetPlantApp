//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:petplant/drawer.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pet Plant'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome user!',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                    child:Image.asset(
                  'assets/plant_ex.png',
                      height: 200,
                      width: 200,
                )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'How is aloe doing?',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                ),
                new LinearPercentIndicator(
                  padding: EdgeInsets.only(left:30),
                    animation: true,
                    width: MediaQuery.of(context).size.width - 150,
                    lineHeight: 20.0,
                    percent: 0.8,
                    center: Text('Good',
                    style: TextStyle(fontSize: 12),),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.green,
                  leading: Text('Overall health: ',
                  style: TextStyle(fontSize: 17),),
//                  trailing: Text('Good'),
                  ),
                Container(
                  padding: EdgeInsets.all(10),
                ),
                new LinearPercentIndicator(
                  padding: EdgeInsets.only(left:29),
                  animation: true,
                  width: MediaQuery.of(context).size.width - 151,
                  lineHeight: 20,
                  percent: 0.7,
                  center: Text('70 %',
                  style: new TextStyle(fontSize: 12)),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                  leading: Text('Moisture level: ',
                    style: TextStyle(fontSize: 17),
                  ),
//                  trailing: Text('Good'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                ),
                new LinearPercentIndicator(
                  padding: EdgeInsets.only(left:50),
                  animation: true,
                  width: MediaQuery.of(context).size.width - 130,
                  lineHeight: 20,
                  percent: 0.75,
                  center: Text('75 %',
                      style: new TextStyle(fontSize: 12)),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                  leading: Text('Water level: ',
                    style: TextStyle(fontSize: 17),
                  ),
//                  trailing: Text('Good'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                ),
                new LinearPercentIndicator(
                  padding: EdgeInsets.only(left:36),
                  animation: true,
                  width: MediaQuery.of(context).size.width - 144,
                  lineHeight: 20,
                  percent: 0.27,
                  center: Text('27 deg C',
                      style: new TextStyle(fontSize: 12)),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                  leading: Text('Temperature: ',
                    style: TextStyle(fontSize: 17),
                  ),
//                  trailing: Text('Good'),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                ),
                Container(
                    height: 40,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 2.5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Switch plant'),
                      onPressed: () {
                      },
                    )),
                Container(
                    height: 40,
                    padding: EdgeInsets.fromLTRB(10, 2.5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Add a plant'),
                      onPressed: () {
                      },
                    )
                ),
              ],
            )
        ),

        // Create Drawer here for the drop down menu//*******
        drawer: Drawer(
          child: Drawers()
        ),
    );
  }
}
