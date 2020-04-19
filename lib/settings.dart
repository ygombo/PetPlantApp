import 'package:flutter/material.dart';

class Settings extends StatelessWidget {

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
              Text('Settings',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Card(
                  child: ListTile(
                    title: Text('Account'),
                    leading: Icon(Icons.account_circle),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
              Card(
                child: ListTile(
                  title: Text('Notification'),
                  leading: Icon(Icons.add_alert),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Connection'),
                  leading: Icon(Icons.bluetooth),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              ]
    ),
    ),
    );
  }
}