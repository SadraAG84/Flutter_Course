import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
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
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images2/ag.jpg"),
          ),
          const Text(
            "Sadra Alizadeh",
            style: TextStyle(
              fontFamily: "DancingScript",
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Computer Engineer",
            style: TextStyle(
              fontFamily: "Wittgenstein",
              fontSize: 25.0,
              letterSpacing: 2,
              color: Colors.teal[800],
            ),
          )
        ],
      ),
    ),
  )));
}
