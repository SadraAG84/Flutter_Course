import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('lib/assets/imagetest.jpg'),
        ),
      ),
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Im rich'),
      ),
    ),
  ));
}
