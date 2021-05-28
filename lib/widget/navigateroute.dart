import 'package:flutter/material.dart';

class Navigateroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'first page',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            RaisedButton(
                child: Text("click me"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secondpage()));
                  //second navigation method
                  //Navigator.pushNamed(context, '/second');
                })
          ],
        ),
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("secondpage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Second page',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            RaisedButton(
                child: Text("Back"),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
