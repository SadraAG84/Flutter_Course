import 'package:flutter/material.dart';
import 'questions.dart';
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
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
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];
  // List<String> questions = ["is 2 + 1 = 3?", "is human blood green?", "do we have a human with 6 hand?" ];
  // List<bool> correct_answer = [true, false, false];

  List<Questions> question_bank = [
    Questions(q : "is 2 + 1 = 3?", a: true),
    Questions(q : "is human blood green?", a: false),
    Questions(q : "do we have a human with 6 hand?", a: false)
  ];

  int question_number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  question_bank[question_number].question_text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green)),
                onPressed: () {

                  bool user_answer = question_bank[question_number].qestion_answer;
                  if(user_answer == true){
                    print("user got right");
                  }else{
                    print("user got it wrong");
                  }

                  setState(() {
                    question_number++;
                  });
                },
                child: Text(
                  "True",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {

                  bool user_answer = question_bank[question_number].qestion_answer;
                  if(user_answer == false){
                    print("user got right");
                  }else{
                    print("user got it wrong");
                  }

                  setState(() {
                    question_number++;

                  });
                },
                child: Text(
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
