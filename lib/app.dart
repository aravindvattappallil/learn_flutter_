import 'package:flutter/material.dart';
import './widget/basicwidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        body: Center(
          child: BasicWidget(),
        ),
      ),
    );
  }
}
