import 'package:flutter/material.dart';
import 'package:flutter_app/widget/buttonwidget.dart';
//import './widget/basicwidget.dart'; hidden to use SingleChild
//import './widget/singlechild.dart';
//import './widget/multichildlayout.dart';
//import './widget/gridview.dart';
//import './widget/stackwidget.dart';
//import './widget/imagewidget.dart';
import './widget/buttonwidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        body: Buttonwidget(),
      ),
    );
  }
}
