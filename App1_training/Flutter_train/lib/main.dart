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
            child: Row(

              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(

                      color: Colors.white,
                      child: Text("Container 1"),
                      alignment: Alignment.center,
                      // height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                      padding: EdgeInsets.all(25.0),

                    ),

                  ],

                ),

                new Row(

                  children: [

                    Container(
                            color: Colors.red,
                            child: Text("Container 2"),
                            alignment: Alignment.center,
                            height: 150.0,
                            width: 100.0,
                            margin: EdgeInsets.fromLTRB(76, 50, 0, 50),
                            padding: EdgeInsets.all(20),
                          ),

                  ],

                ),



                new Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                            color: Colors.blue,
                            child: Text("Container 3"),
                            // height: 100.0,
                            width: 100.0,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(72, 50, 0, 50),
                            padding: EdgeInsets.all(25.0),
                    )
                  ],

                )

              ],
            )
        ),
      )
  ));
}

  // {    crossAxisAlignment: CrossAxisAlignment.center,
  //   // verticalDirection: VerticalDirection.down,
  //   children: [
  //     Container(
  //
  //       color: Colors.white,
  //       child: Text("Container 1"),
  //       alignment: Alignment.center,
  //       // height: 100.0,
  //       width: 100.0,
  //       margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
  //       padding: EdgeInsets.all(25.0),
  //
  //     ),
  //     Container(
  //       color: Colors.red,
  //       child: Text("Container 2"),
  //       alignment: Alignment.center,
  //       // height: 100.0,
  //       // width: 100.0,
  //       margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
  //       padding: EdgeInsets.all(20),
  //     ),
  //     Container(
  //       color: Colors.blue,
  //       child: Text("Container 3"),
  //       // height: 100.0,
  //       width: 100.0,
  //       alignment: Alignment.center,
  //       margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
  //       padding: EdgeInsets.all(25.0),
  //     ),
  //   ],
  // ),