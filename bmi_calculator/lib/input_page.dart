import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const botomContainerColor = Color(0xFFEB1555);

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
                    Expanded(
                        child: Cards(
                      the_color: activeCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    )),
                    Expanded(
                        child: Cards(
                            the_color: activeCardColor,
                            childCard: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: "FEMALE",
                            )))
                  ],
                ),
              ),
              Expanded(child: Cards(the_color: activeCardColor)),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(child: Cards(the_color: activeCardColor)),
                  Expanded(child: Cards(the_color: activeCardColor)),
                ],
              )),
              Container(
                color: botomContainerColor,
                margin: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
          )),
    );
  }
}

class Cards extends StatelessWidget {
  Cards({required this.the_color, this.childCard});

  final Color the_color;
  final childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: the_color,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({required this.icon, this.label});

  final IconData icon;
  final label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
