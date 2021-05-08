import 'package:flutter/material.dart';
import 'package:flutter_app/widget/sportsbutton.dart';

class Sportsbanner extends StatelessWidget {
  final String bannertitle;
  final String bannertext;
  final Color buttoncolor;
  final void Function() buttonaction;
  final Color bannercolor;

  Sportsbanner({
    this.bannercolor,
    this.bannertext,
    this.bannertitle,
    this.buttonaction,
    this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: bannercolor),
      child: ListTile(
        title: Text(
          bannertitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: sportsbutton(
            buttoncolor: buttoncolor,
            buttontext: bannertext,
            buttonaction: buttonaction),
      ),
    );
  }
}
