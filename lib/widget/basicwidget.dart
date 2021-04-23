import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      height: MediaQuery.of(context).size.height * .4,
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.orange,
                spreadRadius: 10,
                blurRadius: 20,
                offset: Offset(10, 10))
          ]),
      child: Center(
        child: Text("first app"),
      ),
    );
  }
}
