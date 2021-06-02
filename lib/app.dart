import 'package:flutter/material.dart';
//import 'package:flutter_app/widget/buttonwidget.dart';
//import './widget/basicwidget.dart'; hidden to use SingleChild
//import './widget/singlechild.dart';
//import './widget/multichildlayout.dart';
//import './widget/gridview.dart';
//import './widget/stackwidget.dart';
//import './widget/imagewidget.dart';
//import './widget/buttonwidget.dart';
//import './widget/textwidget.dart';
//import './widget/textfield.dart';
//import './widget/widgetrefactoring.dart';
//import './widget/cardwidget.dart';
//import './widget/tabwidget.dart';
//import './widget/alertwidget.dart';
//import './widget/listwidgetu.dart';
//import './widget/toastwidget.dart';
//import 'widget/checkbox_radio.dart';
//import 'widget/progrssandsnackbar.dart';
//import 'widget/tooltipandslider.dart';
//import 'widget/imageslideru.dart';
//import 'widget/imageslidertry.dart';
//import 'widget/switchandtable.dart';
//import 'widget/calendarwidget.dart';
//import 'widget/navigateroute.dart';
//import 'widget/navigateroute.dart';
//import 'widget/splashscreens.dart';
import 'widget/firebasesignup.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //second navigation method
      /*initialRoute: '/',
      routes: {
        '/': (context) => Navigateroute(),
        '/second': (context) => Secondpage(),
      },*/
      title: "First App",
      home: Homepage(),
      /*Scaffold(
        body: Navigateroute(),
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 100,
          centerTitle: true,
          title: Text("hello!!!"),
          actions: [
            IconButton(
                onPressed: () {
                  print("icon 1");
                },
                icon: Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  print("icon 2");
                },
                icon: Icon(Icons.favorite)),
            IconButton(
                onPressed: () {
                  print("icon 3");
                },
                icon: Icon(Icons.alarm))
          ],
        ),
        floatingActionButton: FlatButton(
          onPressed: () {
            print("floating pressed");
          },
          child: Icon(Icons.add),
          color: Colors.red,
          shape: CircleBorder(),
          padding: EdgeInsets.all(10),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("home"),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
              ListTile(
                title: Text("favourites"),
                subtitle: Text("subtitle"),
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("list tile 1 pressedd");
                },
                onLongPress: () {
                  print("long press listtile");
                },
              ),
              ListTile(
                title: Text("setting"),
                subtitle: Text("click to go to setting"),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("call aravind");
                },
                onLongPress: () {
                  print("more option");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("click to navigate to account"),
                leading: Icon(Icons.account_box),
                trailing: Icon(Icons.call),
                onTap: () {
                  print("call aravind");
                },
                onLongPress: () {
                  print("more option");
                },
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
