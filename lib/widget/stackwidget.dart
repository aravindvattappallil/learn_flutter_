import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      child: Stack(
        overflow: Overflow.visible,
        textDirection: TextDirection.rtl,
        alignment: Alignment.topLeft,
        children: <Widget>[
          Positioned(
            top: 100,
            left: 200,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            top: -100,
            left: 150,
            child: Container(
              width: 200,
              height: 150,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ));
  }
}
