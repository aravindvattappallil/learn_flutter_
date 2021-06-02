import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _user = new TextEditingController();
  Future<void> signup() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _email.text, password: _password.text);
    } catch (e) {
      print(e);
    }
  }

  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Enter username",
                    hintText: "Username",
                  ),
                  controller: _user,
                  onChanged: (text) {
                    value = text;
                  },
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadiusDirectional.circular(20)),
              ),
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
                    child: Text("signup"),
                    onPressed: () {
                      signup();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Welcome(value)));
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadiusDirectional.circular(20))),
            ],
          ),
        ));
  }
}

class Welcome extends StatelessWidget {
  String value;
  Welcome(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home  "),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text(
            "Welcome \n $value",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
