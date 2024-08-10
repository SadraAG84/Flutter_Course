import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'cards.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender{
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

  //1 = male & 2 = female
  void updateCardColor(Gender selectGender) {
    if (selectGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if(selectGender == Gender.female){
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateCardColor(Gender.male);
                        });
                      },
                      child: Cards(
                        the_color: maleCardColor,
                        childCard: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateCardColor(Gender.female);
                        });
                      },
                      child: Cards(
                          the_color: femaleCardColor,
                          childCard: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: "FEMALE",
                          )),
                    ))
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
