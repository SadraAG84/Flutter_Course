import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        // body: Center(
        //   child: Image(
        //     image: AssetImage('lib/assets/imagetest.jpg'),
        //   ),
        // ),
        backgroundColor: Colors.blueGrey[700],
        body: SafeArea(
          child:Container(
            color: Colors.white,
            child: Text("Hello my name is sadra"),
            height: 100.0,
            width: 220.0,
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            padding: EdgeInsets.all(25.0),
        )
        )
        ),
  ));
}
