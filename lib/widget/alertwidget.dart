import 'package:flutter/material.dart';

class Alertwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Alerts(),
    );
  }
}

class Alerts extends StatelessWidget {
  TextEditingController _texteditingcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          onPressed: () async {
            textfieldalertdialogwidget(context, _texteditingcontroller);
            //alertdialogwidget(context);
            //final field fieldatt = await conformalertdialogwidget(context);
            // print("user selected= $fieldatt");
            //final selection opt = await selectionalertdialogwidget(context);
            ///print(opt);
          },
          child: Text("basic alert"),
        ),
      ),
    );
  }
}

textfieldalertdialogwidget(
    BuildContext context, TextEditingController texteditingcontroller) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Texfiled "),
          content: TextField(
            controller: texteditingcontroller,
          ),
          actions: [
            RaisedButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

alertdialogwidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: Text("simple notification"),
          actions: [
            RaisedButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

enum field { Accept, Confirm }
Future<field> conformalertdialogwidget(BuildContext context) async {
  showDialog<field>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm"),
          content: Text("simple notification"),
          actions: [
            RaisedButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(field.Confirm);
              },
            ),
            RaisedButton(
              child: Text("Accept"),
              onPressed: () {
                Navigator.of(context).pop(field.Accept);
              },
            )
          ],
        );
      });
}

enum selection { C, Python, Dart, Java }
Future<selection> selectionalertdialogwidget(BuildContext context) async {
  return showDialog<selection>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("selection"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.C);
              },
              child: Text("C"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.Java);
              },
              child: Text("Java"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.Python);
              },
              child: Text("Python"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.Dart);
              },
              child: Text("Dart"),
            ),
          ],
        );
      });
}
