import 'package:flutter/material.dart';
import 'quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.GetAnswer();

    if (quizBrain.isFinished() == true) {
      Alert(
              context: context,
              title: "Finished!!",
              desc: "You\'ve reached the end of the quiz.")
          .show();
      quizBrain.reset();
      scorekeeper = [];
    } else {
      if (userPickedAnswer == correctAnswer) {
        scorekeeper.add(const Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        scorekeeper.add(const Icon(Icons.close, color: Colors.red));
      }
    }
  }

  List<Icon> scorekeeper = [];

  // List<String> questions = ["is 2 + 1 = 3?", "is human blood green?", "do we have a human with 6 hand?" ];
  // List<bool> correct_answer = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.GetText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green)),
                onPressed: () {
                  checkAnswer(true);

                  setState(() {
                    quizBrain.nextquestion();
                  });
                },
                child: const Text(
                  "True",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {
                  checkAnswer(false);

                  setState(() {
                    quizBrain.nextquestion();
                  });
                },
                child: const Text(
                  "False",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
          )),
          Row(children: scorekeeper)
        ]);
  }
}
