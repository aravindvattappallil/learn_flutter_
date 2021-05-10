import 'package:flutter/material.dart';
import 'package:flutter_app/widget/cardwidget.dart';

class Tabwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar"),
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "setting",
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: "call",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Homepages(),
              Settingpages(),
              Cardwidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class Homepages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Home",
        style: TextStyle(
            fontSize: 60, color: Colors.red, fontWeight: FontWeight.bold),
      )),
    );
  }
}

class Settingpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Settings",
        style: TextStyle(
            fontSize: 60, color: Colors.red, fontWeight: FontWeight.bold),
      )),
    );
  }
}

class Callpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Calls",
        style: TextStyle(
            fontSize: 60, color: Colors.red, fontWeight: FontWeight.bold),
      )),
    );
  }
}
