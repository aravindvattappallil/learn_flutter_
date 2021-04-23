import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
          body: Center(
        child: Container(
          width: 400,
          height: 400,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text("first app"),
          ),
        ),
      )),
    );
  }
}
