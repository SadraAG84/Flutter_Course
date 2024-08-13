import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'cards.dart';
import 'constants.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 65;
  int age = 20;

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
                          ? kActiveCardColor
                          : kInactiveCardColor,
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
                                ? kActiveCardColor
                                : kInactiveCardColor,
                            childCard: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: "FEMALE",
                            )))
                  ],
                ),
              ),
              Expanded(
                  child: Cards(
                the_color: kActiveCardColor,
                childCard: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child: Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          "cm",
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x15EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 29.0)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 230.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: Cards(
                    the_color: kActiveCardColor,
                    childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(weight.toString(), style: kNumberTextStyle),
                            Text("KG", style: kLabelTextStyle)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Cards(
                          the_color: kActiveCardColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Text(
                                "AGE",
                                style: kLabelTextStyle,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(age.toString(), style: kNumberTextStyle),
                                Text("YEAR", style: kLabelTextStyle)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      )
                  ),
                ],
              )),
              Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              )
            ],
          )),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, required this.onPressed});

  final icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF4C4F5E),


    );
  }
}

