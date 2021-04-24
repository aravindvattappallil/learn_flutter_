import 'package:flutter/material.dart';
//import './widget/basicwidget.dart'; hidden to use SingleChild
import './widget/singlechild.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        body: SingleChild(),
      ),
    );
  }
}
