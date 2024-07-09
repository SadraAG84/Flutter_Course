import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: BallPage(),
  ));

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text("Ask Me Anything."),

      ),
      body: Ball(

      ),
    );

  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("images/ball1.png"),
    );
  }
}


