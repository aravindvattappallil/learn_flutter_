import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello !!!",
        style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.red,
            fontSize: 50,
            fontWeight: FontWeight.w800,
            letterSpacing: 5,
            wordSpacing: 10,
            fontStyle: FontStyle.italic,
            fontFamily: "font1"),
      ),
    );
  }
}
