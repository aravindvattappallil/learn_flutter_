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
  List<String> images = [
    "https://free4kwallpapers.com/uploads/originals/2019/09/02/asus-rog-strix-owl-wallpaper.jpg",
    "https://free4kwallpapers.com/uploads/originals/2019/09/02/asus-rog-strix-owl-wallpaper.jpg",
    "https://free4kwallpapers.com/uploads/originals/2019/09/02/asus-rog-strix-owl-wallpaper.jpg",
    "https://free4kwallpapers.com/uploads/originals/2019/09/02/asus-rog-strix-owl-wallpaper.jpg",
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

// ----------------- gridview.count------------

    /*return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: List.generate(datas.length, (index) {
        return Center(
          child: Newcard(
            datas: datas[index],
          ),
        );
      }),
    );*/

//------------------------gridvie.builder--------

    /*return GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 100,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(child: Image.network(images[index]));
        });*/

//-------------------------------------gridview.extend-------------------

    return GridView.extent(
      primary: false,
      padding: EdgeInsets.all(8),
      maxCrossAxisExtent: 250,
      crossAxisSpacing: 10,
      children: [
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
        Container(
          child: Image.network(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg",
            width: 200,
            height: 200,
          ),
        ),
      ],
    );

    /*return Container(
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
    );*/
  }
}

// ignore: camel_case_types
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
];*/
