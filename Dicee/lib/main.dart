import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red[700],
      ),
      body: DicePage(),
    ),
  ));
}


class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(onPressed: () {
            setState(() {
              leftdicenumber = Random().nextInt(6) + 1;
              print("number = $leftdicenumber");
            });
          },
              child: Image.asset("images/dice$leftdicenumber.png"))),
          Expanded(child: TextButton(onPressed: () {
            setState(() {
              rightdicenumber = Random().nextInt(6) + 1;
              print("number = $rightdicenumber");
            });
          },
              child: Image.asset("images/dice$rightdicenumber.png")))
        ],
      ),
    );
  }
}