import 'package:flutter/material.dart';

class Switchandtable extends StatefulWidget {
  @override
  _SwitchandtableState createState() => _SwitchandtableState();
}

class _SwitchandtableState extends State<Switchandtable> {
  bool switchstate = false;
  var textvalue = "switch is OFF";
  void display_state(bool value) {
    if (switchstate == false) {
      setState(() {
        switchstate = true;
        textvalue = "switchis ON";
      });
      print("ON");
    } else {
      setState(() {
        switchstate = false;
        textvalue = "switchis OFF";
      });
      print("OFF");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Transform.scale(
              scale: 2,
              child: Switch(
                onChanged: display_state,
                value: switchstate,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red,
              )),
        ),
        Text("$textvalue"),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Table(
            defaultColumnWidth: FixedColumnWidth(100),
            border: TableBorder.all(
                color: Colors.black, width: 4, style: BorderStyle.solid),
            children: [
              TableRow(children: [
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Name")],
                )
              ]),
              TableRow(children: [
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Name")],
                )
              ]),
              TableRow(children: [
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Name")],
                )
              ])
            ],
          ),
        )
      ],
    );
  }
}
