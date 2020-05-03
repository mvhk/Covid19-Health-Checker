import 'package:covid19_health_checker/questionBrain.dart';
import 'package:flutter/material.dart';

QuestionList questionList = QuestionList();
void main() => runApp(Corona());

class Corona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Main(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int yeses = 0;
  int nos = 0;
  void checkAnswer(bool userPickedAnswer) {
    if (userPickedAnswer)
      yeses++;
    else
      nos++;
  }

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
                questionList.getQuestionText(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  questionList.nextQuestionNumber();
                });
              },
              color: Colors.green,
              child: Text(
                "Yes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                setState(() {
                  questionList.nextQuestionNumber();
                });
              },
              child: Text(
                "No",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
