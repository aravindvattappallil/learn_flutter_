import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("first app"),
          ),
        ),
      ),
    );
  }
}
