import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            OutlineButton(
              onPressed: () {
                print("hai");
              },
              child: Text("outline button"),
              color: Colors.yellow,
              textColor: Colors.green,
              highlightColor: Colors.blue,
              splashColor: Colors.pink,
              disabledTextColor: Colors.white,
              shape: StadiumBorder(),
              padding: EdgeInsets.all(20),
              onLongPress: () {
                print("long");
              },
              borderSide: BorderSide(color: Colors.pink, width: 3),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              onPressed: () {
                print("hai");
              },
              child: Text("flat  button"),
              color: Colors.yellow,
              textColor: Colors.green,
              highlightColor: Colors.blue,
              splashColor: Colors.pink,
              disabledColor: Colors.red,
              disabledTextColor: Colors.white,
              shape: StadiumBorder(),
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
              onLongPress: () {
                print("long");
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              onPressed: () {
                print("hai");
              },
              child: Text("raised button"),
              color: Colors.yellow,
              textColor: Colors.green,
              highlightColor: Colors.blue,
              splashColor: Colors.pink,
              disabledColor: Colors.red,
              disabledTextColor: Colors.white,
              shape: StadiumBorder(),
              padding: EdgeInsets.all(20),
              elevation: 10,
              onLongPress: () {
                print("long");
              },
            ),
            SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: () {
                print("icon pressed");
              },
              icon: Icon(Icons.chat),
              color: Colors.blue,
              splashColor: Colors.green,
              highlightColor: Colors.red,
            )
          ])),
    );
  }
}
