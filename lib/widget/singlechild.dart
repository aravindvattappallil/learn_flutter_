import 'package:flutter/material.dart';

class SingleChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text("align"),
      alignment: Alignment.bottomCenter,
    );
  }
}
