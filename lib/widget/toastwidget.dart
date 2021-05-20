import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/widget/listview.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastwidget extends StatelessWidget {
  Void Showtoast(int num) {
    Fluttertoast.showToast(
      msg: "this is $num times pressed",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.yellow,
      textColor: Colors.red,
    );
  }

  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(children: [
          Center(
            child: RaisedButton(
                onPressed: () {
                  Showtoast(num);
                },
                child: Text("this is toast"),
                color: Colors.blue),
          ),
          Center(
            child: RaisedButton(
                onPressed: () {
                  num++;
                  if (num % 2 == 0) {
                    Showtoast(num);
                  }
                  print("num=$num");
                },
                child: Text("this is toast"),
                color: Colors.blue),
          ),
        ]),
      ),
    );
  }
}
