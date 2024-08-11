import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'cards.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Gender selectedGender = Gender.male;

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
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      the_color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    )),
                    Expanded(
                        child: Cards(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            the_color: selectedGender == Gender.female
                                ? activeCardColor
                                : inactiveCardColor,
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
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
          )),
    );
  }
}
