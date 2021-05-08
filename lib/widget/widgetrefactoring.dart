import 'package:flutter/material.dart';
import 'package:flutter_app/widget/sportsbanner.dart';
import 'package:flutter_app/widget/sportsbutton.dart';

class Widgetrefactoring extends StatelessWidget {
  Widget divider = SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    Widget cricket = Icon(Icons.sports_cricket);
    Widget soccer = Icon(Icons.sports_soccer);
    Widget basketball = Icon(Icons.sports_basketball);

    //make widget of row
    Widget sportsrow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [cricket, soccer, basketball]);

    return Scaffold(
      appBar: AppBar(
        title: Text("sports"),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.sports_cricket),
              Icon(Icons.sports_soccer),
              Icon(Icons.sports_basketball),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cricket,
              soccer,
              basketball,
            ],
          ),
          sportsrow,
          sportsrow,
          FlatButton(
            onPressed: () {
              print("button pressed=1");
            },
            child: Text("clik me"),
            color: Colors.greenAccent,
          ),
          FlatButton(
            onPressed: () {
              print("button pressed=2");
            },
            child: Text("clik me"),
            color: Colors.blueAccent,
          ),
          sportsbutton(
              buttoncolor: Colors.redAccent,
              buttontext: "press",
              buttonaction: () {
                print("button pressed=3");
              }),
          sportsbutton(
              buttoncolor: Colors.yellowAccent,
              buttontext: "press",
              buttonaction: () {
                print("button pressed=4");
              }),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.grey),
            child: ListTile(
              title: Text(
                "schedule matches",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: sportsbutton(
                  buttoncolor: Colors.deepOrangeAccent,
                  buttontext: "view schedule",
                  buttonaction: () {
                    print("take user to schedule page");
                  }),
            ),
          ),
          divider,
          Sportsbanner(
            bannercolor: Colors.lime,
            bannertext: "view Schedule",
            buttoncolor: Colors.greenAccent,
            bannertitle: "cricket",
            buttonaction: () {
              print("take user to cricket schedule");
            },
          ),
          divider,
          Sportsbanner(
            bannercolor: Colors.lime,
            bannertext: "view Schedule",
            buttoncolor: Colors.greenAccent,
            bannertitle: "basketball",
            buttonaction: () {
              print("take user to basketball schedule");
            },
          ),
          divider,
          Sportsbanner(
            bannercolor: Colors.lime,
            bannertext: "view Schedule",
            buttoncolor: Colors.greenAccent,
            bannertitle: "soccer",
            buttonaction: () {
              print("take user to soccer schedule");
            },
          ),
        ],
      ),
    );
  }
}
