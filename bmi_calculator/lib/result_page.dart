import 'package:flutter/material.dart';
import 'cards.dart';
import 'constants.dart';
import 'buttom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text("Your Result", style: kTitleTextStyle),
              ),
            )),
            Expanded(
                flex: 5,
                child: Cards(
                  the_color: kActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Yor data",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                      Center(
                        child: Text(
                          "Normal",
                          style: kKeyResultTextStyle,
                        ),
                      ),
                      Center(
                        child: Text(
                          "18.3",
                          style: kBMITextStyle,
                        ),
                      ),
                      Text(
                        "Your BMI result is low, you should eat more.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30.0),
                      )
                    ],
                  ),
                )),
            BottomButton(
                onTab: () {
                  Navigator.pop(context);
                },
                ButtonTitle: "RE-CALCULATE")
          ],
        ));
  }
}
