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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                color: Colors.white,
                child: Text("Container 1"),
                // height: 100.0,
                width: 220.0,
                margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
                padding: EdgeInsets.all(25.0),

              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.red,
                child: Text("Container 2"),
                // height: 100.0,
                width: 220.0,
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.all(25.0),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue,
                child: Text("Container 3"),
                // height: 100.0,
                width: 220.0,
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.all(25.0),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
        ),
  ));
}