import 'dart:core';
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

Quiz_brain q = Quiz_brain();
// Above line creates an object of the Quiz_brain class

void main() {
  runApp(Quizzler());
}
class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

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
  const QuizPage({Key? key}) : super(key: key);
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [];
  int question_number=0;
  void checkanswer (bool userSelectedAnswer)
  {
    bool Correctanswer = q.QuestionSet[question_number].questionanswer;
    if (Correctanswer == userSelectedAnswer)
      {
        scorekeeper.add(Icon(Icons.check,
        color: Colors.green,));
      }
    else
      {
        scorekeeper.add(Icon(Icons.close,
          color: Colors.red,));
      }
    setState(() {
      question_number++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex:5,
            child:
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Center(
            child: Text(q.QuestionSet[question_number].questionnumber,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white
            ),),
            ),
          ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                  child: Text("True",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      )
                  ),
                  onPressed: ()
                  {
                    checkanswer(true);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
              ),
            )),
        Expanded(child: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextButton(
            child: Text("False",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                )
            ),
            onPressed: ()
            {
              checkanswer(false);
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red
            ),
          ),
        )),
        Row(
          children: scorekeeper
        )
      ],
    );
  }
}


