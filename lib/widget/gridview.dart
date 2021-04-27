import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Text("one"),
          ),
          Container(
            color: Colors.green,
            child: Text("2"),
          ),
          Container(
            color: Colors.blue,
            child: Text("3"),
          ),
          Container(
              child: ListView(
            scrollDirection: Axis.vertical,
            reverse: true,
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
          ))
        ],
      ),
    );
  }
}
