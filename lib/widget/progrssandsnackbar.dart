import 'package:flutter/material.dart';

class Progress_snack extends StatefulWidget {
  @override
  _Progress_snackState createState() => _Progress_snackState();
}

class _Progress_snackState extends State<Progress_snack> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.all(30),
            child: loading
                ? LinearProgressIndicator()
                : Text("click to download(progress bar"),
          ),
        ),
        Center(
            child: Container(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: Colors.red,
                )
              : Text("circular "),
        )),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                loading = !loading;
              });
            },
            child: Text("Download"),
            color: Colors.blue,
          ),
        ),
        Center(
          child: Container(
            child: RaisedButton(
              onPressed: () {
                final msg = SnackBar(
                  content: Text("this is snackbar notification"),
                  duration: Duration(seconds: 2),
                );
                Scaffold.of(context).showSnackBar(msg);
              },
              child: Text("snackbar"),
            ),
          ),
        )
      ],
    );
  }
}
