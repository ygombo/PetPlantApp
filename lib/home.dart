import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pet Plant'),
          centerTitle: true,
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
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Image.asset(
                  'assets/38911_HonaiTech_logo_J_01.png',
                ),
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
                      color: Colors.blue,
                      child: Text('Switch plant'),
                      onPressed: () {
                      },
                    )),
                Container(
                    height: 40,
                    padding: EdgeInsets.fromLTRB(10, 2.5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Add another plant'),
                      onPressed: () {
                      },
                    )),
              ],
            )));
  }
}
