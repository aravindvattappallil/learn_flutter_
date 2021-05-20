import 'package:flutter/material.dart';

class Checkboxradio extends StatefulWidget {
  @override
  _CheckboxradioState createState() => _CheckboxradioState();
}

enum Gender { male, female, prefer_not_say }

class _CheckboxradioState extends State<Checkboxradio> {
  bool firstbox = false;
  bool secondbox = false;
  bool thirdbox = false;
  bool fourthbox = false;
  Gender gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text("hobby :"),
            ],
          ),
          Row(
            children: [
              Text("painting"),
              Checkbox(
                  checkColor: Colors.red,
                  activeColor: Colors.amber,
                  value: this.firstbox,
                  onChanged: (bool value) {
                    setState(() {
                      this.firstbox = value;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              Text("dancing"),
              Checkbox(
                  checkColor: Colors.red,
                  activeColor: Colors.amber,
                  value: this.secondbox,
                  onChanged: (bool value) {
                    setState(() {
                      this.secondbox = value;
                    });
                  }),
            ],
          ),
          CheckboxListTile(
              title: Text("checkbox list tile "),
              subtitle: Text("sub"),
              secondary: Icon(Icons.phone),
              value: this.thirdbox,
              onChanged: (bool value) {
                setState(() {
                  this.thirdbox = value;
                });
              }),
          ListTile(
            leading: Radio(
              value: Gender.male,
              groupValue: gender,
              onChanged: (Gender value) {
                setState(() {
                  this.gender = value;
                });
              },
            ),
            title: Text("Male"),
          ),
          ListTile(
            leading: Radio(
              value: Gender.female,
              groupValue: gender,
              onChanged: (Gender value) {
                setState(() {
                  this.gender = value;
                });
              },
            ),
            title: Text("Female"),
          ),
          ListTile(
            leading: Radio(
              value: Gender.prefer_not_say,
              groupValue: gender,
              onChanged: (Gender value) {
                setState(() {
                  this.gender = value;
                });
              },
            ),
            title: Text("prefer not to say"),
          )
        ],
      ),
    );
  }
}
