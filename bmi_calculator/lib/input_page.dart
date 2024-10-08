import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'cards.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

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
                    const Center(
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
                        const Text(
                          "cm",
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x15EB1555),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 29.0)),
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
                        const Center(
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
                            const Text("KG", style: kLabelTextStyle)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
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
                        const Center(
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
                            const Text("YEAR", style: kLabelTextStyle)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              )),
              BottomButton(
                ButtonTitle: "CALCULATE",
                onTab: () {
                  CalculatorBrain calculate =
                      CalculatorBrain(height: height, weight: weight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                bmiResult: calculate.calculateBMI(),
                                resultText: calculate.getResult(),
                                interpretation: calculate.getInterpretation(),
                              )));
                },
              )
            ],
          )),
    );
  }
}
