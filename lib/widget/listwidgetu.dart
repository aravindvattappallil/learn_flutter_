import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/widget/listview.dart';
import 'package:flutter_app/widget/newcard.dart';

// ignore: must_be_immutable
class Listwidget extends StatelessWidget {
  List lists = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29
  ];

  @override
  Widget build(BuildContext context) {
    //return ListView.builder(
    //itemCount: lists.length,
    // itemBuilder: (context, index) {
    // return ListTile(
    // title: Text("hello ${lists[index]}"),
    //onTap: () {
    // print("hehe ${lists[index]}");
    //},
    //);
    // },
    //);
    /* return GridView.count(
      crossAxisCount: 2,
      children: List.generate(datas.length, (index) {
        return Center(
          child: Newcard(
            datas: datas[index],
          ),
        );
      }),
    );*/
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 148,
            color: Colors.redAccent,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
          ),
          Container(
            width: 148,
            color: Colors.blueAccent,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
          ),
          Container(
            width: 148,
            color: Colors.greenAccent,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
          ),
          Container(
            width: 148,
            color: Colors.yellowAccent,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
          ),
          Container(
            width: 148,
            color: Colors.pinkAccent,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class data {
  const data({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<data> datas = const <data>[
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
  const data(
    title: "Home",
    icon: Icons.home,
  ),
];
*/
