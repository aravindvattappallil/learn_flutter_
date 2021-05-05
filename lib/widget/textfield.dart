import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextField(
          keyboardType: TextInputType.text,
          onChanged: (String value1) {
            print("output:" + value1);
          },
          onTap: () {
            print("tap happened");
          },
          enabled: true,
          maxLines: 10,
          controller: TextEditingController(text: "hello"),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            icon: Icon(Icons.account_box, color: Colors.red),
            suffixIcon: Icon(Icons.more),
            //suffixText: "ok",
            suffix: RaisedButton(
              onPressed: () {},
              child: Text("ok"),
            ),
            contentPadding: EdgeInsets.all(20),
            labelText: "name",
            hintText: "abc",
            helperText: "enter name",
            labelStyle: TextStyle(
              color: Colors.brown,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            hintStyle: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            helperStyle: TextStyle(
              color: Colors.brown,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
