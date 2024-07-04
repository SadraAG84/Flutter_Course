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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage("images2/ag.jpg"),
          ),
          const Text(
            "Sadra Alizadeh",
            style: TextStyle(
              fontFamily: "DancingScript",
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Computer Engineer",
            style: TextStyle(
              fontFamily: "Wittgenstein",
              fontSize: 20.0,
              color: Colors.teal[100],
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 25.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal[200],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                ),
                title: Text(
                  "+90 123 456 7890",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                  ),
                ),
              )
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                ),
                title: Text(
                  "Sadra@gmail.com",
                  style: TextStyle(
                      fontFamily: "Wittgenstein",
                      fontSize: 20.0,
                      color: Colors.teal.shade900
                  ),
                ),
              )
            ),
          )
        ],
      ),
    ),
  )));
}


// Row(
// children: <Widget>[
// const Icon(
// Icons.email,
//
// ),
// const SizedBox(
// width: 10.0,
// ),
// Text(
// "email@gmail.com",
// style: TextStyle(
// fontFamily: "Wittgenstein",
// fontSize: 20.0,
// color: Colors.teal.shade900
// ),
// )
// ],
// ),



// Row(
// children: <Widget>[
// const Icon(
// Icons.phone,
// // size: 30.0,
// ),
// const SizedBox(
// width: 10.0,
// ),
// Text(
// "+90 123 456 7890",
// style: TextStyle(
// // fontFamily: "Wittgenstein",
// fontSize: 20.0,
// color: Colors.teal.shade900,
//
// ),
// )
// ],
// ),