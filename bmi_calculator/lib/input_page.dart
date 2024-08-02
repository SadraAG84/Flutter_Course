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
          body: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: Cards(color_click: Color(0xFF1D1E33))),
                    Expanded(child: Cards(color_click: Color(0xFF1D1E33),))
                  ],
                ),
              ),
              Expanded(child: Cards(color_click: Color(0xFF1D1E33),)),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(child: Cards(color_click: Color(0xFF1D1E33),)),
                  Expanded(child: Cards(color_click: Color(0xFF1D1E33),)),
                ],
              ))
            ],
          )),
    );
  }
}

class Cards extends StatelessWidget {

  Cards({required this.color_click});

  final Color color_click;


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color_click,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
