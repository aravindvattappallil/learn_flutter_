import 'package:flutter/material.dart';

class MultiChildLayout extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.ltr,
        children: (<Widget>[
          Container(
            width: 90,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text("one"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text("two"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: Center(
              child: Text("three"),
            ),
          ),
        ]),
      ),
    );
  }
}
