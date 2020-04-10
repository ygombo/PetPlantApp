
import 'package:flutter/material.dart';
import 'package:petplant/login.dart';


class Drawers extends StatelessWidget {

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
            // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.body2,
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right:10),
                            child: Icon(Icons.account_circle),
                          ),
                        ),
                        TextSpan(text: 'User name'),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                  color: Colors.green,),
                ),
                Card(
                  child: ListTile(
                    title: Text('Add a plant'),
                    leading: Icon(Icons.add_circle),
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
                    title: Text('Settings'),
                    leading: Icon(Icons.settings),
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
                    title: Text('Log out'),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {

                    // Then close the drawer
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ),
              ]
          ),));
  }
}