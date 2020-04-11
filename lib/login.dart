import 'package:flutter/material.dart';
import 'package:petplant/home.dart';
import 'package:petplant/signup.dart';
import 'package:progress_dialog/progress_dialog.dart';
//import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ProgressDialog dialog;

  @override
  void initState() {
    super.initState();
    dialog = new ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false, showLogs: true);
    dialog.style(
        message: "Logging in...",
        progressWidget: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircularProgressIndicator(),
        ),
        elevation: 10);
  }

  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Plant'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Container(),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Image.asset(
                'assets/HT_logo.png',
                height: 200,
                width: 200,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.black,
                      )),
                      labelText: 'User Name',
                      labelStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Colors.green,
                child: Text('Forgot Password'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text('Login'),
                    onPressed: () async{
                      await dialog.show();
                      print(nameController.text);
                      print(passwordController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  )),
              Container(
                  child: Row(
                children: <Widget>[
                  Text(
                    'Does not have account?',
                    //style: TextStyle(color:Colors.white),
                  ),
                  FlatButton(
                    textColor: Colors.green,
                    child: Text(
                      'Register an account',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
            ],
          )),
    );
  }
}
