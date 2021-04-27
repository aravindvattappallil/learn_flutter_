import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: ListView(
          scrollDirection: Axis.vertical,
          reverse: true,
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 200,
              width: 300,
              child: Text("one"),
            ),
            Container(
              color: Colors.green,
              height: 200,
              width: 300,
              child: Text("2"),
            ),
            Container(
              color: Colors.yellow,
              height: 200,
              width: 300,
              child: Text("3"),
            ),
            Container(
              color: Colors.pink,
              height: 200,
              width: 300,
              child: Text("4"),
            ),
          ],
        ));
  }
}
