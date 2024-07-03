import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    // body: Center(
    //   child: Image(
    //     image: AssetImage('lib/assets/imagetest.jpg'),
    //   ),
    // ),
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images2/ag.jpg"),
          ),
          Text("Sadra Alizadeh",

            style: TextStyle(
              fontFamily: "DancingScript",
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )

        ],
      ),
    ),
  )));
}
