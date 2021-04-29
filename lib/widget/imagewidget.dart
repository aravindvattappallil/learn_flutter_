import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack(
        overflow: Overflow.visible,
        textDirection: TextDirection.rtl,
        alignment: Alignment.topLeft,
        children: <Widget>[
          Positioned(
            top: 50,
            left: 100,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.asset("assets/rog.jpg"),
            ),
          ),
          Positioned(
            top: 300,
            left: 100,
            child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/rog.jpg"),
                )),
          ),
          Positioned(
            bottom: 20,
            left: 100,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.network(
                "https://free4kwallpapers.com/uploads/originals/2019/09/02/asus-rog-strix-owl-wallpaper.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
