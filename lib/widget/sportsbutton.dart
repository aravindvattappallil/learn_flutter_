import 'dart:ffi';

import 'package:flutter/material.dart';

Widget sportsbutton({
  Color buttoncolor,
  String buttontext,
  Void Function() buttonaction,
}) {
  return FlatButton(
    onPressed: buttonaction,
    child: Text(buttontext),
    color: buttoncolor,
  );
}
