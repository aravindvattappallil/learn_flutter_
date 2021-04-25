import 'package:flutter/material.dart';
//import './widget/basicwidget.dart'; hidden to use SingleChild
//import './widget/singlechild.dart';
//import './widget/multichildlayout.dart';
import './widget/columnwidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        body: ColumnWidget(),
      ),
    );
  }
}
