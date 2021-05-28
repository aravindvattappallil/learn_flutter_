import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Homepageaftersplash())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://safemoon.net/img/174x174.png"),
    );
  }
}

class Homepageaftersplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMEPAGE"),
      ),
      body: Center(
        child: Text("welcome to home page method1"),
      ),
    );
  }
}

class Homepageaftersplash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMEPAGE"),
      ),
      body: Center(
        child: Text("welcome to home page method 2"),
      ),
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Homepageaftersplash2(),
      image: Image.network("https://safemoon.net/img/174x174.png"),
      photoSize: 100,
      loadingText: Text(
        "Loading..",
        style: TextStyle(color: Colors.red, fontSize: 20),
      ),
      loaderColor: Colors.red,
      backgroundColor: Colors.black,
    );
  }
}
