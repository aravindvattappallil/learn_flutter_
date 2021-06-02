import 'package:flutter/material.dart';
import 'package:flutter_app/widget/signin.dart';
import 'package:flutter_app/widget/signup.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign up using Firebase")),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              },
              child: Text("signup"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text("signin"),
            )
          ],
        ),
      ),
    );
  }
}
