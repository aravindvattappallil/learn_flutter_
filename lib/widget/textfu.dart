import 'package:flutter/material.dart';

class Textfu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 30,
              child: Center(
                child: RichText(
                    text: TextSpan(
                        text: "hai",
                        style: TextStyle(color: Colors.blue),
                        children: <TextSpan>[
                      TextSpan(text: "bye", style: TextStyle(color: Colors.red))
                    ])),
              )),
          Container(
              height: 100,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "name",
                    hintText: "enter yout name"),
              )),
        ],
      ),
    );
  }
}
