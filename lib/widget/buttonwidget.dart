import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: FlatButton(
        onPressed: () {
          print("hai");
        },
        child: Text("click"),
        color: Colors.yellow,
        textColor: Colors.green,
        highlightColor: Colors.blue,
        splashColor: Colors.pink,
        disabledColor: Colors.red,
        disabledTextColor: Colors.white,
        shape: StadiumBorder(),
        padding: EdgeInsets.all(20),
        onLongPress: () {
          print("long");
        },
      )),
    );
  }
}
