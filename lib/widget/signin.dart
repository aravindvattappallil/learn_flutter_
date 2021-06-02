import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/firebasesignup.dart';

class Signin extends StatelessWidget {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  Future<void> signin(BuildContext context) async {
    try {
      User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: _email.text, password: _password.text))
          .user;
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return Welcome2();
      }));
    } catch (e) {
      print(e);
    }
    print("logged in");
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: "Enter Email",
                      hintText: "Email",
                    ),
                    controller: _email,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadiusDirectional.circular(20))),
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: "Enter Password",
                      hintText: "Password",
                    ),
                    controller: _password,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadiusDirectional.circular(20))),
              Container(
                  height: 50,
                  width: 150,
                  child: FlatButton(
                    child: Text("sign in"),
                    onPressed: () {
                      signin(context);
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.redAccent,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadiusDirectional.circular(20))),
            ],
          ),
        ));
  }
}

class Welcome2 extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home  "),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Welcome Back\n ",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
                height: 50,
                width: 150,
                child: FlatButton(
                  child: Text("Log out"),
                  onPressed: () {
                    auth.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadiusDirectional.circular(20))),
          ],
        ));
  }
}
