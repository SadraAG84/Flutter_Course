import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('BMI CALCULATOR')),
          ),
          body: const Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: Cards()),
                    Expanded(child: Cards())
                  ],
                ),
              ),
              Expanded(child: Cards()),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(child: Cards()),
                  Expanded(child: Cards()),
                ],
              ))
            ],
          )),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
