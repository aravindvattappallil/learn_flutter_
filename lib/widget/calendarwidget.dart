import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendarwidget extends StatefulWidget {
  @override
  _CalendarwidgetState createState() => _CalendarwidgetState();
}

class _CalendarwidgetState extends State<Calendarwidget> {
  CalendarController _controller;
  void initstate() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
