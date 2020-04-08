import 'package:flutter/material.dart';

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
                      'Your plant',
                      style: TextStyle(fontSize: 20),
                    )),
                ListTile(
                  title: Text('Overall heatlh                           : Good'),
                ),
                ListTile(
                  title: Text('Moisture level                          : 60%'),
                ),
                ListTile(
                  title: Text('Water level                                : 70%'),
                ),
                ListTile(
                  title: Text('Temperature                            : 27 deg C'),
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
                      child: Text('Add another plant'),
                      onPressed: () {
                      },
                    )),
              ],
            )));
  }
}
