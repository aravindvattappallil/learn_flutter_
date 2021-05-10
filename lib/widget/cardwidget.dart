import 'package:flutter/material.dart';

class Cardwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          //']
          //color: Colors.lightBlueAccent,
          child: Card(
            color: Colors.greenAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    title: Text(
                      "Aravind V R",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "Developer",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                ),
                ButtonBar(
                  children: [
                    RaisedButton(
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text("call"),
                        icon: Icon(Icons.call),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("contact"),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
