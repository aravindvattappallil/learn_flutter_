import 'package:flutter/material.dart';

/*/class Tooltipandslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Tooltip(
        waitDuration: Duration(seconds: 5),
        showDuration: Duration(seconds: 10),
        decoration: BoxDecoration(color: Colors.blue),
        message: "set alarm",
        child: FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.alarm,
              size: 150,
            )),
      ),
    );
  }
}
*/

class Tooltipandslider extends StatefulWidget {
  @override
  _TooltipandsliderState createState() => _TooltipandsliderState();
}

class _TooltipandsliderState extends State<Tooltipandslider> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Icon(
            Icons.volume_up,
            size: 50,
          ),
        ),
        Expanded(
            child: Slider(
          value: _value.toDouble(),
          max: 20,
          min: 0,
          activeColor: Colors.green,
          inactiveColor: Colors.red,
          onChanged: (double newvalue) {
            setState(() {
              _value = newvalue.round();
            });
          },
        ))
      ],
    );
  }
}
